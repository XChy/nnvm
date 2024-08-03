/**
 * TailElim: Eliminate recursively tail call
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class TailElimPass : public FunctionPass {
public:
  static constexpr const char *passName = "tailelim";
  bool run(Function &F);
};
} /* namespace nnvm */
