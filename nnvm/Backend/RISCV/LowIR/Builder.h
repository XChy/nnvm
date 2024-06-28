#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/StackSlot.h"
#include <vector>
namespace nnvm::riscv {
class LIRBuilder {
public:
  LIRBuilder(LIRModule &module) : module(module) {}

  LIRBuilder &addInst(LIRInst *inst);
  LIRBuilder &copy(Register *from, Register *to);
  LIRBuilder &storeValueTo(LIRValue *value, LIRValue *ptr, LIRValueType type);
  LIRBuilder &loadValueFrom(LIRValue *value, LIRValue *ptr, LIRValueType type);

  LIRBuilder &loadConstantToReg(LIRConst *constant, Register *reg);
  // Assume srcReg != destReg
  LIRBuilder &loadRegPlusConstantToReg(Register *srcReg, LIRConst *constant,
                                       Register *destReg);

  LIRBuilder &loadRegPlusConstantToReg(Register *srcReg, LIRConst *constant,
                                       Register *destReg, Register *scratchReg);

  Register *newVReg(LIRValueType valueType);
  Register *phyReg(uint64_t regId);
  StackSlot *newStackSlot(LIRFunc *);

  void setInsertPoint(LIRBB::Iterator insertPoint) {
    this->insertPoint = insertPoint;
  }

  void setInsertPoint(LIRBB *bb, LIRInst *inst) {
    this->insertPoint = LIRBB::Iterator(inst, bb);
  }

private:
  LIRBB *BB;
  LIRBB::Iterator insertPoint;
  LIRModule &module;
};
} /* namespace nnvm::riscv */
