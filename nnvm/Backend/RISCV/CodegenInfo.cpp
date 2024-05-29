#include "CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Utils/Debug.h"
#include <string>
#include <unordered_map>

using namespace nnvm;
using namespace nnvm::riscv;

static inline LowOperand getGPR(uint64_t id, LowOperand::LowValueType type) {
  return LowOperand{
      .type = LowOperand::GPRegister, .valueType = type, .regId = id};
}

LowOperand riscv::getRetReg(LowOperand::LowValueType type) {
  return getGPR(PhyRegister::A0, type);
}

LowOperand riscv::getSPReg(LowOperand::LowValueType type) {
  return getGPR(PhyRegister::SP, type);
}

LowOperand riscv::getZeroReg(LowOperand::LowValueType type) {
  return getGPR(PhyRegister::ZERO, type);
}

LowOperand riscv::getRAReg(LowOperand::LowValueType type) {
  return getGPR(PhyRegister::RA, type);
}

std::vector<uint64_t> riscv::getArgGPRs() {
  return {PhyRegister::A0, PhyRegister::A1, PhyRegister::A2, PhyRegister::A3,
          PhyRegister::A4, PhyRegister::A5, PhyRegister::A6, PhyRegister::A7};
}

std::vector<uint64_t> riscv::getArgFPRs() {
  return {PhyRegister::FA0, PhyRegister::FA1, PhyRegister::FA2,
          PhyRegister::FA3, PhyRegister::FA4, PhyRegister::FA5,
          PhyRegister::FA6, PhyRegister::FA7};
}

std::vector<uint64_t> riscv::unpreservedRegs() {
  return {
      RA, T0, T1, T2, T3, T4, T5, T6, A0, A1, A2, A3, A4,  A5,
      A6, A7, S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11,
  };
}

std::vector<uint64_t> riscv::unpreservedFRegs() {
  // TODO:
  nnvm_unimpl();
}

bool riscv::isBranch(uint64_t instType) {
  switch (instType) {
  case JAL:
  case JALR:
  case (B_BEGIN + 1)...(B_END - 1):
    return true;
  default:
    return false;
  }
}

LowBB *riscv::getBranchDest(const LowInst &inst) {
  switch (inst.type) {
  case JAL:
    return inst.operand[1].bb;
  case JALR:
    return nullptr;
  case (B_BEGIN + 1)...(B_END - 1):
    return inst.operand[2].bb;
  default:
    nnvm_unreachable("Must be a valid branch instruction")
  }
}

LowInstType riscv::getLoadInstType(LowOperand::LowValueType type) {
  switch (type) {
  case LowOperand::i1:
  case LowOperand::i8:
    return LB;
  case LowOperand::i16:
    return LH;
  case LowOperand::i32:
    return LW;
  case LowOperand::i64:
    return LD;
  case LowOperand::Imm:
  case LowOperand::Float:
    nnvm_unreachable("Not implemented");
  }
}

LowInstType riscv::getStoreInstType(LowOperand::LowValueType type) {
  switch (type) {
  case LowOperand::i1:
  case LowOperand::i8:
    return SB;
  case LowOperand::i16:
    return SH;
  case LowOperand::i32:
    return SW;
  case LowOperand::i64:
    return SD;
  case LowOperand::Imm:
  case LowOperand::Float:
    nnvm_unreachable("Not implemented");
  }
}
