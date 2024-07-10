/**
 * GlobalAttributor: Attach attributes like pure to functions/variables.
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include "Transform/Scalar/ConstantFold.h"
#include <queue>

namespace nnvm {
class GlobalAttributorPass : public ModulePass {
public:
  static constexpr const char *passName = "global-attr";
  bool run(Module &M);
  bool attachPure(Module &M);
};
} /* namespace nnvm */
