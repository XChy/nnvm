#include "Rotate.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"
#include "Utils/Debug.h"

using namespace nnvm;

bool RotatePass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= rotate(loop);
  return changed;
}

static bool usedOutsides(Value *value, Loop *loop) {
  return std::any_of(
      value->users().begin(), value->users().end(),
      [loop](Use *U) { return !loop->contains(U->getUser()->getBlock()); });
}

//    preheader
// -- oldHeader <--
// |  newHeader   |
// |  oldLatch  --
// --->  exit

//    preheader
// -- newHeader <--
// |  oldLatch  --
// --->  exit

bool RotatePass::rotate(Loop *loop) {
  loop->updatePreheader();

  auto *oldHeader = loop->getHeader();
  auto *oldLatch = loop->getSingleLatch();
  auto *preheader = loop->getPreheader();

  // The old loop header must be an exiting block and has a conditional branch.
  // Otherwise, the loop has been rotated.
  auto *oldBranch = mayCast<BranchInst>(oldHeader->getTerminator());
  if (!oldBranch->isConditional() || !loop->isExiting(oldHeader))
    return false;

  // TODO: handle multiple exits
  if (loop->getExits().size() > 1)
    return false;

  // If the latch is already an exiting block, the loop has been rotated.
  if (!oldLatch || loop->isExiting(oldLatch))
    return false;

  // We need preheader to insert guard.
  if (!preheader)
    return false;

  BasicBlock *exit = oldHeader->getSucc(0);
  BasicBlock *newHeader = oldHeader->getSucc(1);
  if (loop->contains(exit))
    std::swap(exit, newHeader);

  if (newHeader->getPredNum() != 1 || exit->getPredNum() != 1)
    return false;

  opt_debug(std::cerr << "Rotated " << loop->getHeader()->getName() << "\n");
  // Copy instructions from old header to preheader.
  std::unordered_map<Value *, Value *> old2NewMap;
  auto instIt = oldHeader->begin();

  for (; PhiNode *phi = mayCast<PhiNode>(*instIt); instIt++)
    old2NewMap[phi] = phi->getIncomingValueOf(preheader);

  for (; instIt != oldHeader->termEnd(); instIt++) {
    Instruction *old = (*instIt);
    Instruction *copied = old->copyWithName();
    copied->replaceOps([&old2NewMap](Value *old) { return old2NewMap[old]; });
    preheader->termEnd().insertBefore(copied);
    old2NewMap[old] = copied;
  }

  for (int i = 0; i < oldHeader->getSuccNum(); i++) {
    BasicBlock *succ = oldHeader->getSucc(i);
    for (auto it = succ->begin(); PhiNode *phi = mayCast<PhiNode>(*it); it++) {
      phi->addIncoming(preheader, phi->getIncomingValueOf(oldHeader));
    }
  }

  // Replace the terminator of preheader.
  preheader->termEnd().insertBefore(oldHeader->getTerminator()->copy());
  preheader->getTerminator()->eraseFromBB();
  preheader->getTerminator()->replaceOps(
      [&old2NewMap](Value *old) { return old2NewMap[old]; });

  IRBuilder builder;

  // Rewrite outside uses, TODO: handle multiple exits
  for (auto *I : *oldHeader) {
    if (!usedOutsides(I, loop))
      continue;

    Value *preheaderVal = old2NewMap[I];
    Value *headerVal = I;

    for (Use *U : incChange(I->users())) {
      Instruction *user = U->getUser();
      if (user->getBlock() == oldHeader)
        continue;
      if (user->getBlock() == preheaderVal) {
        U->set(preheaderVal);
        continue;
      }
    }

    builder.insertAt(exit->begin());
    auto *outsidePhi =
        builder.buildPhi(preheaderVal->getType(), preheaderVal->getName());
    headerVal->replaceSelfIf(outsidePhi, [loop](Use *U) {
      return !loop->contains(U->getUser()->getBlock());
    });
    for (auto *pred : exit->getPredRange()) {
      if (pred == preheader)
        outsidePhi->addIncoming(pred, preheaderVal);
      else if (pred == oldHeader)
        outsidePhi->addIncoming(pred, headerVal);
      else
        nnvm_unreachable("The exit has multiple preds")
    }
  }

  // Move phis in oldHeader to newHeader
  builder.insertAt(newHeader->begin());
  for (Instruction *I : incChange(*oldHeader)) {
    PhiNode *phi = mayCast<PhiNode>(I);
    if (!phi)
      break;

    auto *newPhi = builder.buildPhi(phi->getType(), phi->getName());

    Value *preheaderVal = phi->getIncomingValueOf(preheader);
    phi->removeIncoming(preheader);

    phi->replaceOps([&](Value *a) { return a == phi ? newPhi : nullptr; });
    phi->replaceSelfIf(newPhi, [&](Use *U) {
      auto *userBB = U->getUser()->getBlock();
      if (userBB == oldHeader)
        return U->getUser()->isa<PhiNode>();
      return loop->contains(userBB);
    });
    newPhi->addIncoming(preheader, preheaderVal);
    newPhi->addIncoming(oldHeader, phi);
  }

  // Rewrite inside uses
  builder.insertAt(newHeader->begin());
  for (auto *I : *oldHeader) {
    if (I->isa<PhiNode>())
      continue;
    Value *preheaderVal = old2NewMap[I];
    Value *headerVal = I;

    bool usedInside = std::any_of(
        headerVal->users().begin(), headerVal->users().end(), [&](Use *U) {
          auto *userBB = U->getUser()->getBlock();
          return loop->contains(userBB) && userBB != oldHeader;
        });

    if (!usedInside)
      continue;

    auto *insidePhi =
        builder.buildPhi(preheaderVal->getType(), preheaderVal->getName());
    headerVal->replaceSelfIf(insidePhi, [&](Use *U) {
      auto *userBB = U->getUser()->getBlock();
      return loop->contains(userBB) && userBB != oldHeader;
    });

    for (auto *pred : newHeader->getPredRange()) {
      if (pred == preheader)
        insidePhi->addIncoming(pred, preheaderVal);
      else
        insidePhi->addIncoming(pred, headerVal);
    }
  }

  return true;
}
