#pragma once

#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {
class SLPairElimPass : public FunctionPass {
public:
  static constexpr const char *passName = "slpair-elim";
  bool run(Function &F);

private:
};
} /* namespace nnvm */
