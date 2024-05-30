#include "Backend/RISCV/LowIR/Builder.h"
#include <Backend/RISCV/LowIR.h>

using namespace nnvm::riscv;

LIRBuilder &LIRBuilder::addInst(LIRInst *inst) {
  insertPoint.insertBefore(inst);
  return *this;
}

Register *LIRBuilder::newVReg(LIRValueType valueType) {
  Register *newReg = module.allocVReg(valueType);
  return newReg;
}

Register *LIRBuilder::phyReg(uint64_t regId) { return module.getPhyReg(regId); }

StackSlot *newStackSlot(LIRFunc *func) { return func->allocStackSlot(); }
