#include "MemProp.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "IR/Attributes.h"
#include <stack>

using namespace nnvm;

bool MemPropPass::run(Function &F) {
  memAcc = getAnalysis<MemAccAnalysis>(F);
  bool changed = false;

  for (BasicBlock *BB : F)
    changed |= processBB(BB);

  return changed;
}

bool MemPropPass::processBB(BasicBlock *BB) {
  bool changed = false;
  for (Instruction *I : incChange(*BB)) {
    if (!I->mayReadMemory() && !I->mayWriteToMemory())
      continue;
    AccessInfo defInfo = memAcc->getDomMemDef(I);
    if (defInfo.flag != MemDef)
      continue;

    if (memAcc->hasClobber(I, defInfo.accessInst->getBlock(), BB))
      continue;

    if (auto *defI = mayCast<StoreInst>(defInfo.accessInst)) {
      if (auto *LI = mayCast<LoadInst>(I)) {
        LI->replaceSelf(defI->getStoredValue());
        LI->eraseFromBB();
        changed = true;
      }
    }
  }
  return changed;
}
