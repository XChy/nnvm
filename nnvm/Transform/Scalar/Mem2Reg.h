#pragma once

#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {
class Mem2RegPass : public FunctionPass {
public:
  static constexpr const char *passName = "mem2reg";
  bool run(Function &F);
  bool promote(StackInst *SI);

private:
  std::unordered_map<StackInst *, std::vector<Instruction *>> defs;
};
} /* namespace nnvm */
