/**
 * WhichExpand: expanding "which of" instructions
 */

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "Analysis/MemAccAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <map>

namespace nnvm {
class WhichExpandPass : public FunctionPass {
public:
  static constexpr const char *passName = "which-expand";
  bool run(Function &F);
  bool processBlock(BasicBlock *block);

private:
};
} /* namespace nnvm */
