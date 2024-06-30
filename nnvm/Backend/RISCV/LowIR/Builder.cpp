#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include "Utils/Debug.h"
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

Register *LIRBuilder::newVRegForPtr() { return newVReg(LIRValueType::i64); }

LIRBuilder &LIRBuilder::copy(LIRValue *from, Register *to) {
  LIRInst *inst;
  if (from->getType() == LIRValueType::Float)
    inst = LIRInst::create(FSGNJ_S, to, from, from);
  else if (from->getType() == LIRValueType::Double)
    inst = LIRInst::create(FSGNJ_D, to, from, from);
  else
    inst = LIRInst::create(ADD, to, from, module.getPhyReg(ZERO));
  addInst(inst);
  return *this;
}

LIRBuilder &LIRBuilder::storeValueTo(LIRValue *value, LIRValue *ptr,
                                     LIRValueType type) {
  auto *saveReg = LIRInst::createAllUse(getStoreInstType(type), value, ptr,
                                        LIRImm::create(0));
  addInst(saveReg);
  return *this;
}

LIRBuilder &LIRBuilder::loadValueFrom(LIRValue *dest, LIRValue *ptr,
                                      LIRValueType type) {
  auto *saveReg =
      LIRInst::create(getLoadInstType(type), dest, ptr, LIRImm::create(0));
  addInst(saveReg);
  return *this;
}

LIRBuilder &LIRBuilder::loadGlobalToReg(Register *reg, LIRGlobalVar *global) {
  addInst(LIRInst::create(LA, reg, global));
  return *this;
}

LIRBuilder &LIRBuilder::loadConstantToReg(LIRConst *constant, Register *reg,
                                          bool keepSSA) {
  if (constant->getType() != LIRValueType::Float) {
    if (canExpressInBits<12>(constant->getIValue())) {
      auto load = LIRInst::create(ADDI, reg, phyReg(ZERO),
                                  LIRImm::create(constant->getIValue()));
      addInst(load);
      return *this;
    }

    if (canExpressInBits<32>(constant->getIValue())) {
      uint64_t largeValue;
      uint64_t smallValue;
      if (constant->getIValue() & 0x800) {
        smallValue = (constant->getIValue() & 0xFFF) - (1 << 12);
        largeValue = ((constant->getIValue() >> 12) + 1) & 0xFFFFF;
      } else {
        smallValue = constant->getIValue() & 0xFFF;
        largeValue = (constant->getIValue() >> 12) & 0xFFFFF;
      }

      auto auipc = LIRInst::create(LUI, reg, LIRImm::create(largeValue));
      auto load = LIRInst::create(ADDI, reg, reg, LIRImm::create(smallValue));
      addInst(auipc);
      addInst(load);
      return *this;
    }

    nnvm_unreachable("How to handle big constant, especially for i64?")
  } else {
    if (!keepSSA)
      nnvm_unimpl();
    Register *middle = newVRegForPtr();
    auto *globalValue = module.getConstantAsGlobal(constant);
    loadGlobalToReg(middle, globalValue);
    loadValueFrom(reg, middle, constant->getType());
  }
  return *this;
}

LIRBuilder &LIRBuilder::loadRegPlusConstantToReg(Register *srcReg,
                                                 LIRConst *constant,
                                                 Register *destReg) {
  if (canExpressInBits<12>(constant->getIValue())) {
    auto load = LIRInst::create(ADDI, destReg, srcReg,
                                LIRImm::create(constant->getIValue()));
    addInst(load);
    return *this;
  }

  loadConstantToReg(constant, destReg);
  auto addDestAndSrc = LIRInst::create(ADD, destReg, destReg, srcReg);
  addInst(addDestAndSrc);
  return *this;
}

LIRBuilder &LIRBuilder::loadRegPlusConstantToReg(Register *srcReg,
                                                 LIRConst *constant,
                                                 Register *destReg,
                                                 Register *scratchReg) {
  if (canExpressInBits<12>(constant->getIValue())) {
    auto load = LIRInst::create(ADDI, destReg, srcReg,
                                LIRImm::create(constant->getIValue()));
    addInst(load);
    return *this;
  }

  loadConstantToReg(constant, scratchReg);
  auto addDestAndSrc = LIRInst::create(ADD, destReg, srcReg, scratchReg);
  addInst(addDestAndSrc);
  return *this;
}

Register *LIRBuilder::phyReg(uint64_t regId) { return module.getPhyReg(regId); }

StackSlot *newStackSlot(LIRFunc *func) { return func->allocStackSlot(); }
