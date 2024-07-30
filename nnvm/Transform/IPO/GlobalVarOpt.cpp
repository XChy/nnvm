#include "GlobalVarOpt.h"
#include "ADT/Ranges.h"
#include "Analysis/AAInfo.h"
#include "IR/Attributes.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool GlobalVarOptPass::run(Module &M) {
  bool changed = true;
  while (changed) {
    changed = false;
    for (auto [name, global] : M.getGlobalVarMap()) {
      changed |= processGlobalVar(global);
    }
  }
  return true;
}

bool GlobalVarOptPass::processGlobalVar(GlobalVariable *global) {}
