/**
 * Inliner: inline functions
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include "Transform/Scalar/ConstantFold.h"
#include <queue>

namespace nnvm {
class InlinerPass : public ModulePass {
public:
  static constexpr const char *passName = "combiner";
  bool run(Module &M);
  bool tryInline(Module &M);
  void inlineCall(CallInst *callsite);
};
} /* namespace nnvm */
