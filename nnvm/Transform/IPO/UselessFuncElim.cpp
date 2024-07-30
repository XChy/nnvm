#include "UselessFuncElim.h"
#include "ADT/Ranges.h"
#include "Analysis/AAInfo.h"
#include "IR/Attributes.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool UselessFuncElimPass::run(Module &M) {
  bool changed = true;
  while (changed) {
    changed = false;
    auto funcMap = M.getFunctionMap();

    for (auto [name, func] : funcMap) {
      if (func->isAttached(Attribute::Internal) && func->users().empty()) {
        M.removeFunction(name);
        delete func;
        changed = true;
      }
    }
  }

  return true;
}
