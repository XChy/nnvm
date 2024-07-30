/**
 * UselessFuncElim: Eliminate useless functions, reducing codesize.
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <queue>

namespace nnvm {
class UselessFuncElimPass : public ModulePass {
public:
  static constexpr const char *passName = "func-elim";
  bool run(Module &M);
};
} /* namespace nnvm */
