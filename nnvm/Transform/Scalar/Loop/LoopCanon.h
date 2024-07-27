/**
 * Loop-Canon: canonicalize loop, insert preheaders.
 */

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LoopCanonPass : public FunctionPass {
public:
  static constexpr const char *passName = "loop-canon";
  bool run(Function &F);

private:
  LoopAnalysis *LA;
};
} /* namespace nnvm */
