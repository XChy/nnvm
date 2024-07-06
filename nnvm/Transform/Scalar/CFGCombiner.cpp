#include "CFGCombiner.h"
#include "ADT/Ranges.h"
#include "IR/Instruction.h"
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
    // Replace "br true, a, b" with "br a".
    if (BI->isConditional() && BI->getCondition()->isConstant()) {
      ConstantInt *constCond = dyn_cast<ConstantInt>(BI->getCondition());
      builder.setInsertPoint(BB->end());
      builder.buildBr(constCond->getValue() ? BI->getSucc(0) : BI->getSucc(1));
      BI->eraseFromBB();
      return true;
    }
  }
  return false;
}
