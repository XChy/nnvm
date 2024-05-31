#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/CodegenInfo.h"
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

LIRBuilder &LIRBuilder::storeValueToSlot(LIRValue *value, StackSlot *slot,
                                         LIRValueType type) {
  auto *saveReg = LIRInst::createAllUse(getStoreInstType(type), value, slot,
                                        LIRImm::create(0));
  addInst(saveReg);
  return *this;
}
LIRBuilder &LIRBuilder::loadValueFromSlot(LIRValue *value, StackSlot *slot,
                                        LIRValueType type) {
  auto *saveReg =
      LIRInst::create(getLoadInstType(type), value, slot, LIRImm::create(0));
  addInst(saveReg);
  return *this;
}

Register *LIRBuilder::phyReg(uint64_t regId) { return module.getPhyReg(regId); }

StackSlot *newStackSlot(LIRFunc *func) { return func->allocStackSlot(); }
