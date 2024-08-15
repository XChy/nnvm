#pragma once

#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class StackElimPass : public FunctionPass {
public:
  static constexpr const char *passName = "stack-elim";
  bool run(Function &F);
  bool processStack(StackInst *SI);

private:
};
} /* namespace nnvm */
