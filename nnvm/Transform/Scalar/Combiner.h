/**
 * Combiner: the pass combining expensive instructions into cheaper ones.
 * For example, simplify "a + b - a" to "b".
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include "Transform/Scalar/ConstantFold.h"
#include <queue>

namespace nnvm {
class CombinerPass : public FunctionPass {
public:
  static constexpr const char *passName = "combiner";
  bool run(Function &F);

private:
  Value *simplifyInst(Instruction *I);
  Value *simplifyAdd(AddInst *I);
  Value *simplifySub(SubInst *I);
  Value *simplifyMul(MulInst *I);
  Value *simplifySDiv(SDivInst *I);
  Value *simplifySRem(SRemInst *I);

  Value *simplifyAnd(AndInst *I);
  Value *simplifyOr(OrInst *I);
  Value *simplifyXor(XorInst *I);

  Value *simplifyPtrAdd(PtrAddInst *I);

  Value *simplifyICmp(ICmpInst *I);
  Value *simplifyPhi(PhiNode *I);
  Value *simplifyWhichOf(WhichOfInst *I);

  ConstantFold folder;
  IRBuilder builder;
  Module *module;
};
} /* namespace nnvm */
