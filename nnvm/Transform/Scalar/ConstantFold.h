/**
 * ConstantFold: a utility class for folding instructions with constant
 * operands, such as "1 + 2 -> 3". NOTE: This is not a pass, it could be shared
 * among other passes.
 */

#pragma once
#include "IR/Instruction.h"
#include "IR/Module.h"
#include "IR/Value.h"

namespace nnvm {
class ConstantFold {
public:
  /**
   * Fold the instructions with constant operands.
   * @param I the instruction to fold
   * @return the constant result if foldable, else nullptr.
   */
  Value *fold(Instruction *I);

  Value *foldAdd(AddInst *I);
  Value *foldSub(SubInst *I);
  Value *foldMul(MulInst *I);
  Value *foldSDiv(SDivInst *I);
  Value *foldXor(XorInst *I);
  Value *foldShl(ShlInst *I);
  Value *foldSRem(SRemInst *I);
  Value *foldICmp(ICmpInst *I);
  Value *foldLoad(LoadInst *I);

  void setModule(Module *module) { this->module = module; }

private:
  Module *module;
};
} // namespace nnvm
