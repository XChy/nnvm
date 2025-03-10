#include "GlobalAttributor.h"
#include "ADT/Ranges.h"
#include "Analysis/AAInfo.h"
#include "IR/Attributes.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool GlobalAttributorPass::run(Module &M) {
  bool changed = true;
  while (changed) {
    changed = attachPure(M);
  }
  return true;
}

bool GlobalAttributorPass::attachPure(Module &M) {
  bool changed = false;

  for (auto [_, F] : M.getFunctionMap()) {
    if (F->isExternal() || F->isAttached(Attribute::Pure))
      continue;

    bool isPure = true;

    for (BasicBlock *BB : *F) {
      for (Instruction *I : *BB) {

        if (CallInst *CI = mayCast<CallInst>(I)) {
          if (CI->getCallee() != F &&
              !cast<Function>(CI->getCallee())->isAttached(Attribute::Pure))
            isPure = false;
          continue;
        }

        if (I->mayWriteToMemory()) {
          if (auto *SI = mayCast<StoreInst>(I)) {
            isPure &= getRootObj(SI->getDest())->isa<StackInst>();
          } else {
            isPure = false;
          }
        }

        if (I->mayReadMemory()) {
          if (auto *LI = mayCast<LoadInst>(I)) {
            isPure &= getRootObj(LI->getSrc())->isa<StackInst>();
          } else {
            isPure = false;
          }
        }

      }
    }

    if (isPure) {
      F->attach(Attribute::Pure);
      changed = true;
    }
  }

  return changed;
}
