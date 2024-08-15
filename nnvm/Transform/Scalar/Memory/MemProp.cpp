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
    if (!I->mayReadMemory())
      continue;

    if (tryReplaceWithDef(I)) {
      changed = true;
      continue;
    }

    if (tryReplaceWithLoad(I)) {
      changed = true;
      continue;
    }
  }
  return changed;
}

bool MemPropPass::tryReplaceWithDef(Instruction *I) {
  assert(I->mayReadMemory());

  AccessInfo defInfo = memAcc->getDomMemDef(I);
  if (defInfo.flag != MemDef)
    return false;

  if (memAcc->hasWriteClobber(I, defInfo.accessInst->getBlock(), I->getBlock()))
    return true;

  if (auto *defI = mayCast<StoreInst>(defInfo.accessInst)) {
    if (auto *LI = mayCast<LoadInst>(I)) {
      LI->replaceSelf(defI->getStoredValue());
      LI->eraseFromBB();
      return true;
    }
  }
  return false;
}

bool MemPropPass::tryReplaceWithLoad(Instruction *I) {
  AccessInfo useInfo = memAcc->getDomMemUse(I);
  if (useInfo.flag != MemUse)
    return false;

  if (memAcc->hasWriteClobber(I, useInfo.accessInst->getBlock(), I->getBlock()))
    return false;

  if (auto *useI = mayCast<LoadInst>(useInfo.accessInst)) {
    if (auto *LI = mayCast<LoadInst>(I)) {
      LI->replaceSelf(useI);
      LI->eraseFromBB();
      return true;
    }
  }
  return false;
}
