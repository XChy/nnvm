/**
 * LSR: Loop Strength Reduction
 * exit.
 */

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "Analysis/SCEV.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LSRPass : public FunctionPass {
public:
  static constexpr const char *passName = "lsr";
  bool run(Function &F);
  bool processInst(Instruction *I, Loop *loop);

private:
  IRBuilder builder;
  LoopAnalysis *LA;
  SCEV *scev;
};
} /* namespace nnvm */
