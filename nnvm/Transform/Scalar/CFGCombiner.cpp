#include "CFGCombiner.h"
#include "ADT/Ranges.h"
#include "IR/Instruction.h"
#include "Transform/Infra/BlockUtils.h"
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
          if (PhiInst *phi = dyn_cast<PhiInst>(U->getUser()))
            phi->removeIncoming(BB);
          else
            nnvm_unimpl();
        }
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
  if (BI->getCondition()->isConstant()) {
    ConstantInt *constCond = dyn_cast<ConstantInt>(BI->getCondition());

    BasicBlock *unlinked =
        constCond->getValue() ? BI->getSucc(1) : BI->getSucc(0);
    for (Instruction *I : *unlinked)
      if (PhiInst *phi = dyn_cast<PhiInst>(I))
        phi->removeIncoming(BB);
      else
        break;

    builder.setInsertPoint(BB->end());
    builder.buildBr(constCond->getValue() ? BI->getSucc(0) : BI->getSucc(1));
    BI->eraseFromBB();
    return true;
  }

  if (BI->getSucc(0) == BI->getSucc(1)) {
    builder.setInsertPoint(BB->end());
    builder.buildBr(BI->getSucc(0));
    BI->eraseFromBB();
    return true;
  }
  return false;
}
