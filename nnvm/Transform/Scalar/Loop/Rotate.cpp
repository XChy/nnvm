#include "Rotate.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"

using namespace nnvm;

bool RotatePass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= rotate(loop);
  return changed;
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
  bool changed = false;
  auto *oldHeader = loop->getHeader();
  auto *oldLatch = loop->getSingleLatch();
  auto *preheader = loop->getPreheader();

  // The old loop header must be an exiting block and has a conditional branch.
  // Otherwise, the loop has been rotated.
  auto *oldBranch = mayCast<BranchInst>(oldHeader->getTerminator());
  if (!oldBranch->isConditional() || !loop->isExiting(oldHeader))
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

  assert(newHeader->getPredNum() == 1);

  // Copy instructions from old header to preheader.
  std::unordered_map<Value *, Value *> old2NewMap;
  auto instIt = oldHeader->begin();

  for (; PhiInst *phi = mayCast<PhiInst>(*instIt); instIt++)
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
    for (auto it = succ->begin(); PhiInst *phi = mayCast<PhiInst>(*it); it++) {
      phi->addIncoming(preheader, phi->getIncomingValueOf(oldHeader));
    }
  }

  // Replace the terminator of preheader.
  preheader->termEnd().insertBefore(oldHeader->getTerminator()->copy());
  preheader->getTerminator()->eraseFromBB();

  IRBuilder builder;
  builder.setInsertPoint(newHeader->begin());
  // Rewrite outside uses
  for (auto it = oldHeader->begin(); PhiInst *phi = mayCast<PhiInst>(*it);
       it++) {
    auto *newPhi = builder.buildPhi(phi->getType(), phi->getName());
    newPhi->addIncoming(preheader, phi->getIncomingValueOf(preheader));
    newPhi->addIncoming(oldHeader, phi->getIncomingValueOf(oldLatch));
    phi->replaceSelf(newPhi);
    phi->eraseFromBB();
  }

  for (auto *I : *oldHeader) {
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
  }

  return changed;
}
