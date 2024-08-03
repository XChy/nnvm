#include "UselessFuncElim.h"
#include "ADT/Ranges.h"
#include "Analysis/AAInfo.h"
#include "IR/Attributes.h"
#include "IR/Instruction.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool UselessFuncElimPass::run(Module &M) {
  bool changed = true;
  while (changed) {
    changed = false;
    auto funcMap = M.getFunctionMap();

    for (auto [name, func] : funcMap) {
      if (!func->isAttached(Attribute::Internal))
        continue;
      if (func->users().empty()) {
        M.removeFunction(name);

        RetInst *placeholderInst = new RetInst();

        for (BasicBlock *block : *func)
          for (Instruction *I : *block)
            I->replaceOps([&](Value *) { return placeholderInst; });

        for (BasicBlock *block : incChange(*func))
          block->eraseFromFunc();

        delete placeholderInst;
        delete func;

        changed = true;
      }
    }
  }

  return true;
}
