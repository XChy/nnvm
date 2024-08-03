/**
 * GlobalVarOpt: Eliminate global variables.
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/GlobalVariable.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include "Transform/Scalar/ConstantFold.h"
#include <queue>

namespace nnvm {
class GlobalVarOptPass : public ModulePass {
public:
  static constexpr const char *passName = "globalvar-opt";
  bool run(Module &M);

  bool processGlobalVar(GlobalVariable *global);

private:
  std::vector<GlobalVariable *> globalToRemove;
};
} /* namespace nnvm */
