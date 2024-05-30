#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <vector>
namespace nnvm::riscv {
class LIRBuilder {
public:
  LIRBuilder(LIRModule &module) : module(module) {}

  LIRBuilder &addInst(LIRInst *inst);
  // LIRInst *buildInst(LowInstType type, const std::vector<LowOperand>
  // &operands);

  Register *newVReg(LIRValueType valueType);
  Register *phyReg(uint64_t regId);
  StackSlot *newStackSlot(LIRFunc *);

  void setInsertPoint(LIRBB::Iterator insertPoint) {
    this->insertPoint = insertPoint;
  }

private:
  LIRBB *BB;
  LIRBB::Iterator insertPoint;
  LIRModule &module;
};
} /* namespace nnvm::riscv */
