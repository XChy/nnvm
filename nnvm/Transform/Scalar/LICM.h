/**
 * LICM: Loop Invariant Code Motion
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "Analysis/LoopAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LICMPass : public FunctionPass {
public:
  static constexpr const char *passName = "cse";
  bool run(Function &F);

private:
  LoopAnalysis* LA;
};
} /* namespace nnvm */
