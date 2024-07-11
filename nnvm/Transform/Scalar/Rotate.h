/**
 * Rotate: replace while loops with do-while loops
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "Analysis/LoopAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class RotatePass : public FunctionPass {
public:
  static constexpr const char *passName = "rotate";
  bool run(Function &F);
  bool rotate(Loop *loop);

private:
  LoopAnalysis *LA;
};
} /* namespace nnvm */
