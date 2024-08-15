/**
 * LinearizePtrAdd: linearize ptradd address calculation
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LinearizePtrAddPass : public FunctionPass {
public:
  static constexpr const char *passName = "linearize-ptradd";
  bool run(Function &F);
  Value *expandShlToMul(ShlInst *shl);
  Value *linearize(PtrAddInst *ptradd);

private:
  IRBuilder builder;
  Module *module;
};
} /* namespace nnvm */
