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
          if (auto *phi = dyn_cast<PhiInst>(U->getUser()))
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
  if (BranchInst *BI = dyn_cast<BranchInst>(BB->getTerminator())) {
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

    builder.setInsertPoint(succ->end());
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
    if (pred->getSuccNum() != 1)
      return false;
    // Those jump from pred to BB, now jump from pred to succ directly.
    TerminatorInst *TI = pred->getTerminator();
    for (int i = 0; i < TI->getSuccNum(); i++)
      if (TI->getSucc(i) == BB)
        TI->setSucc(i, succ);

    // Replace BB in phis with pred.
    BB->replaceSelf(pred);
    return true;
  } else if ((BB != BB->getParent()->getEntry())) {
    BB->replaceSelf(succ);
    BI->eraseFromBB();
    builder.setInsertPoint(BB->end());
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
    ConstantInt *constCond = dyn_cast<ConstantInt>(BI->getCondition());

    BasicBlock *unlinked = constCond->getValue() ? falseSucc : trueSucc;
    for (Instruction *I : *unlinked)
      if (PhiInst *phi = dyn_cast<PhiInst>(I))
        phi->removeIncoming(BB);
      else
        break;

    builder.setInsertPoint(BB->end());
    builder.buildBr(constCond->getValue() ? trueSucc : falseSucc);
    BI->eraseFromBB();
    return true;
  }

  // "br cond, dest, dest"  --> "br dest"
  if (trueSucc == falseSucc) {
    builder.setInsertPoint(BB->end());
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
  BasicBlock *destBB = nullptr;
  BasicBlock *trueIncoming = nullptr;
  BasicBlock *falseIncoming = nullptr;
  bool changed = false;
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

  if (!destBB || destBB == BB)
    return false;

  // for (auto *I : incChange(*destBB)) {
  // PhiInst *phi = dyn_cast<PhiInst>(I);
  // if (!phi || phi->getIncomingNum() != 2)
  // break;
  // Value *trueValue = phi->getIncomingValueOf(trueIncoming);
  // Value *falseValue = phi->getIncomingValueOf(falseIncoming);
  // if (phi->getType()->isIntegerNBits(1)) {
  // Value *newCond = nullptr;
  // builder.setInsertPoint(destBB->begin());
  // if (match(trueValue, pattern::pOne())) {
  // newCond = builder.buildBinOp<OrInst>(BI->getCondition(), falseValue,
  // phi->getType());
  //} else if (match(falseValue, pattern::pZero())) {
  // newCond = builder.buildBinOp<AndInst>(BI->getCondition(), trueValue,
  // phi->getType());
  //} else {
  // continue;
  //}

  // phi->replaceSelf(newCond);
  // phi->eraseFromBB();
  // changed = true;
  //}
  //}

  return changed;
}
