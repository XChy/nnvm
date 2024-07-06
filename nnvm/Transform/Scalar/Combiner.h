/**
 * Combiner: the pass combining expensive instructions into cheaper ones.
 * For example, simplify "a + b - a" to "b".
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include "Transform/Scalar/ConstantFold.h"
#include <queue>

namespace nnvm {
class CombinerPass : public FunctionPass {
public:
  static constexpr const char *passName = "combiner";
  bool run(Function &F);

private:
  Value *simplifyInst(Instruction *I);

  std::queue<Instruction *> worklist;

  ConstantFold folder;
};
} /* namespace nnvm */
