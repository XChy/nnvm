/**
 * StaticUnroll: unroll loops with constant trip count.
 */

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "Analysis/SCEV.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class StaticUnrollPass : public FunctionPass {
public:
  static constexpr const char *passName = "static-unroll";
  bool run(Function &F);
  bool unroll(Loop *loop);

private:
  LoopAnalysis *LA;
  SCEV *scev;
};
} /* namespace nnvm */
