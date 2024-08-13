#include "CFGCombiner.h"
#include "ADT/PatternMatch.h"
#include "ADT/Ranges.h"
#include "IR/Instruction.h"
#include "Transform/Infra/BlockUtils.h"
#include "Transform/Scalar/CombinePatterns.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
using namespace nnvm;

bool CFGCombinerPass::run(Function &F) {
  bool changed = true;
  while (changed) {
    changed = false;
    for (BasicBlock *BB : F)
      changed |= processBB(BB);

    for (BasicBlock *BB : incChange(F)) {
      // Entry block is not dead.
      if (BB == F.getEntry())
        continue;

      if (BB->getPredNum() == 0) {
        for (Use *U : incChange(BB->users())) {
          if (auto *phi = mayCast<PhiNode>(U->getUser()))
            phi->removeIncoming(BB);
          else
            nnvm_unimpl();
        }
        for (Instruction *I : *BB)
          if (I->getType() && !I->getType()->isVoid())
            I->replaceSelf(UBValue::create(I->getType()));

        BB->eraseFromFunc();
        changed = true;
      }
    }
  }
  return true;
}

bool CFGCombinerPass::processBB(BasicBlock *BB) {
  if (BranchInst *BI = mayCast<BranchInst>(BB->getTerminator())) {
    if (!BI->isConditional())
      return foldBBWithUncondBr(BB, BI);

    if (BI->isConditional())
      return foldBBWithCondBr(BB, BI);
  }
  return false;
}

bool CFGCombinerPass::foldBBWithUncondBr(BasicBlock *BB, BranchInst *BI) {

  BasicBlock *succ = BI->getSucc(0);
  if (BB == succ)
    return false;

  // Before:
  // preds --> BB --> succ --> ...
  // After:
  // preds --> [BB -- succ] --> ...
  // The successor must have BB as the single predecessor.
  if (succ->getPredNum() == 1 && !succ->containsPhi()) {
    BI->eraseFromBB();
    succ->replaceSelf(BB);
    moveInstInBlock(succ, BB);

    builder.insertAt(succ->end());
    builder.buildUnreachable();
    return true;
  }

  // Before:
  // pred --> BB (with only br) --> succ
  // After:
  // pred --> succ

  if (BB->getInsts().size() != 1)
    return false;

  if (succ->containsPhi()) {
    if (BB->getPredNum() != 1)
      return false;
    BasicBlock *pred = *BB->getPredBegin();
    // if (pred->isPredecessorOf(succ))
    if (pred->getSuccNum() != 1)
      return false;
    // Those jump from pred to BB, now jump from pred to succ directly.
    TerminatorInst *TI = pred->getTerminator();
    TI->replaceOps(SingleMapper(BB, succ));

    // Replace BB in phis with pred.
    BB->replaceSelf(pred);
    return true;
  } else if ((BB != BB->getParent()->getEntry())) {
    BB->replaceSelf(succ);
    BI->eraseFromBB();
    builder.insertAt(BB->end());
    builder.buildUnreachable();
    return true;
  }

  return false;
}

bool CFGCombinerPass::foldBBWithCondBr(BasicBlock *BB, BranchInst *BI) {
  // Replace "br true, a, b" with "br a".
  BasicBlock *trueSucc = BI->getSucc(0);
  BasicBlock *falseSucc = BI->getSucc(1);

  if (BI->getCondition()->isConstant()) {
    ConstantInt *constCond = mayCast<ConstantInt>(BI->getCondition());

    BasicBlock *unlinked = constCond->getValue() ? falseSucc : trueSucc;
    for (Instruction *I : *unlinked)
      if (PhiNode *phi = mayCast<PhiNode>(I))
        phi->removeIncoming(BB);
      else
        break;

    builder.insertAt(BB->end());
    builder.buildBr(constCond->getValue() ? trueSucc : falseSucc);
    BI->eraseFromBB();
    return true;
  }

  // "br cond, dest, dest"  --> "br dest"
  if (trueSucc == falseSucc) {
    builder.insertAt(BB->end());
    builder.buildBr(trueSucc);
    BI->eraseFromBB();
    return true;
  }

  // phi elimination in if-else

  if (foldIfElse(BB, BI, trueSucc, falseSucc))
    return true;

  return false;
}

bool CFGCombinerPass::foldIfElse(BasicBlock *BB, BranchInst *BI,
                                 BasicBlock *trueSucc, BasicBlock *falseSucc) {
  Value *cond = BI->getCondition();
  BasicBlock *destBB = nullptr;
  BasicBlock *trueIncoming = nullptr;
  BasicBlock *falseIncoming = nullptr;
  constexpr uint maxInstAtBranch = 3;

  // Match if - else pattern.
  if (trueSucc->getSuccNum() == 1 && trueSucc->getSucc(0) == falseSucc) {
    trueIncoming = trueSucc;
    falseIncoming = BB;
    destBB = falseSucc;
  } else if (falseSucc->getSuccNum() == 1 &&
             falseSucc->getSucc(0) == trueSucc) {
    trueIncoming = BB;
    falseIncoming = falseSucc;
    destBB = trueSucc;
  } else if (trueSucc->getSuccNum() == 1 && falseSucc->getSuccNum() == 1) {
    if (trueSucc->getSucc(0) == falseSucc->getSucc(0)) {
      trueIncoming = trueSucc;
      falseIncoming = falseSucc;
      destBB = trueSucc->getSucc(0);
    }
  }

  if (!destBB || destBB == BB || destBB->getPredNum() != 2)
    return false;

  if (trueSucc != destBB && trueSucc->getPredNum() != 1)
    return false;
  if (falseSucc != destBB && falseSucc->getPredNum() != 1)
    return false;

  // The successors have not sideeffect !!
  auto containSideEffect = [&](BasicBlock *bb) -> bool {
    if (bb == destBB)
      return false;
    return !std::none_of(bb->begin(), bb->termEnd(),
                         [](Instruction *I) { return I->haveSideEffect(); });
  };

  if (containSideEffect(trueSucc) || containSideEffect(falseSucc))
    return false;

  // Must be profitable !!
  uint totalInstToMove =
      (trueSucc != destBB ? trueSucc->getInsts().size() - 1 : 0) +
      (falseSucc != destBB ? falseSucc->getInsts().size() - 1 : 0);

  if (totalInstToMove > maxInstAtBranch)
    return false;

  // Check phis legality.
  std::vector<PhiNode *> phis;
  for (auto *I : incChange(*destBB)) {
    PhiNode *phi = mayCast<PhiNode>(I);
    if (!phi)
      break;
    if (phi->getIncomingNum() != 2)
      return false;
    phis.push_back(phi);
  }

  if (phis.empty() || phis.size() > 2)
    return false;

  // Replace phis with whichofs
  builder.insertAt(destBB->normalBegin());
  for (PhiNode *phi : phis) {
    Value *trueValue = phi->getIncomingValueOf(trueIncoming);
    Value *falseValue = phi->getIncomingValueOf(falseIncoming);

    auto whichName = phi->getName() + ".which";
    auto *which = builder.buildWhichOf(cond, trueValue, falseValue, whichName);

    phi->replaceSelf(which);
    phi->eraseFromBB();
  }

  // Move instruction in trueSucc and falseSucc into BB
  auto moveInst = [&](BasicBlock *movedBlock) {
    if (movedBlock == destBB)
      return;
    for (Instruction *I : incChange(*movedBlock)) {
      if (I->isa<TerminatorInst>())
        break;
      I->removeFromBB();
      BB->termEnd().insertBefore(I);
    }
  };

  moveInst(trueSucc);
  moveInst(falseSucc);

  BB->getTerminator()->eraseFromBB();
  builder.insertAt(BB->end());
  builder.buildBr(destBB);

  return true;
}
