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

  LIRInst *copy(LIRValue *from, Register *to);
  LIRBuilder &jumpTo(LIRBB *dest);
  LIRBuilder &implicitJumpTo(LIRBB *dest);

  LIRBuilder &storeValueTo(LIRValue *value, LIRValue *ptr, LIRValueType type);
  LIRBuilder &loadValueFrom(LIRValue *dest, LIRValue *ptr, LIRValueType type);

  LIRBuilder &loadGlobalToReg(Register *reg, LIRGlobalVar *global);

  LIRBuilder &loadConstantToReg(LIRConst *constant, Register *reg,
                                bool keepSSA = true);
  // Assume srcReg != destReg
  LIRBuilder &loadRegPlusConstantToReg(Register *srcReg, LIRConst *constant,
                                       Register *destReg);

  LIRBuilder &loadRegPlusConstantToReg(Register *srcReg, LIRConst *constant,
                                       Register *destReg, Register *scratchReg);

  Register *newVReg(LIRValueType valueType);
  Register *newVRegForPtr();
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
