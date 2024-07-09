#include "GlobalAttributor.h"
#include "ADT/Ranges.h"
#include "IR/Attributes.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool GlobalAttributorPass::run(Module &M) {
  for (auto [_, F] : M.getFunctionMap()) {
    if (F->isExternal())
      continue;
    bool isPure = true;
    for (BasicBlock *BB : *F) {
      for (Instruction *I : *BB) {
        if (CallInst *CI = dyn_cast<CallInst>(I)) {
          if (CI->getCallee() != F)
            isPure = false;
          continue;
        }
        if (I->mayWriteToMemory())
          isPure = false;
      }
    }

    if (isPure)
      F->attach(Attribute::Pure);
  }

  return true;
}
