/**
 * Combiner: the pass combining expensive instructions into cheaper ones.
 * For example, simplify "a + b - a" to "b".
 */
#pragma once

#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class CombinerPass : public FunctionPass {
public:
  static constexpr const char *passName = "combiner";
  bool run(Function &F);

private:
};
} /* namespace nnvm */
