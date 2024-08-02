#include "CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Utils/Debug.h"
#include <memory>
#include <string>
#include <unordered_map>

using namespace nnvm;
using namespace nnvm::riscv;

std::vector<Register *> riscv::getArgGPRs(LIRModule *M) {
  return {M->getPhyReg(A0), M->getPhyReg(A1), M->getPhyReg(A2),
          M->getPhyReg(A3), M->getPhyReg(A4), M->getPhyReg(A5),
          M->getPhyReg(A6), M->getPhyReg(A7)};
}

std::vector<Register *> riscv::getArgFPRs(LIRModule *M) {
  return {M->getPhyReg(FA0), M->getPhyReg(FA1), M->getPhyReg(FA2),
          M->getPhyReg(FA3), M->getPhyReg(FA4), M->getPhyReg(FA5),
          M->getPhyReg(FA6), M->getPhyReg(FA7)};
}

std::vector<Register *> riscv::unpreservedRegs(LIRModule *M) {
  return {
      M->getPhyReg(RA), M->getPhyReg(T0), M->getPhyReg(T1),  M->getPhyReg(T2),
      M->getPhyReg(T3), M->getPhyReg(T4), M->getPhyReg(T5),  M->getPhyReg(T6),
      M->getPhyReg(A0), M->getPhyReg(A1), M->getPhyReg(A2),  M->getPhyReg(A3),
      M->getPhyReg(A4), M->getPhyReg(A5), M->getPhyReg(A6),  M->getPhyReg(A7),
      M->getPhyReg(S0), M->getPhyReg(S1), M->getPhyReg(S2),  M->getPhyReg(S3),
      M->getPhyReg(S4), M->getPhyReg(S5), M->getPhyReg(S6),  M->getPhyReg(S7),
      M->getPhyReg(S8), M->getPhyReg(S9), M->getPhyReg(S10), M->getPhyReg(S11),
  };
}

std::vector<Register *> riscv::unpreservedFRegs(LIRModule *M) {
  return {
      M->getPhyReg(FT0),  M->getPhyReg(FT1),  M->getPhyReg(FT2),
      M->getPhyReg(FT3),  M->getPhyReg(FT4),  M->getPhyReg(FT5),
      M->getPhyReg(FT6),  M->getPhyReg(FT7),  M->getPhyReg(FT8),
      M->getPhyReg(FT9),  M->getPhyReg(FT10), M->getPhyReg(FT11),
      M->getPhyReg(FA0),  M->getPhyReg(FA1),  M->getPhyReg(FA2),
      M->getPhyReg(FA3),  M->getPhyReg(FA4),  M->getPhyReg(FA5),
      M->getPhyReg(FA6),  M->getPhyReg(FA7),  M->getPhyReg(FS0),
      M->getPhyReg(FS1),  M->getPhyReg(FS2),  M->getPhyReg(FS3),
      M->getPhyReg(FS4),  M->getPhyReg(FS5),  M->getPhyReg(FS6),
      M->getPhyReg(FS7),  M->getPhyReg(FS8),  M->getPhyReg(FS9),
      M->getPhyReg(FS10), M->getPhyReg(FS11),
  };
}

bool riscv::isBranch(uint64_t instType) {
  switch (instType) {
  case JAL:
  case JALR:
  case IMPLICIT_JUMP:
  case (B_BEGIN + 1)...(B_END - 1):
    return true;
  default:
    return false;
  }
}

LIRBB *riscv::getBranchDest(LIRInst *inst) {
  switch (inst->getOpcode()) {
  case IMPLICIT_JUMP:
    return inst->getOp(0)->as<LIRBB>();
  case JAL:
    return inst->getOp(1)->as<LIRBB>();
  case JALR:
    return nullptr;
  case (B_BEGIN + 1)...(B_END - 1):
    return inst->getOp(2)->as<LIRBB>();
  default:
    std::cerr << "Invalid opcode" << inst->getOpcode() << "\n";
    nnvm_unreachable("Must be a valid branch instruction")
  }
}

void riscv::setBranchDest(LIRInst *inst, LIRBB *dest) {
  switch (inst->getOpcode()) {
  case JAL:
    inst->setUse(1, dest);
    break;
  case (B_BEGIN + 1)...(B_END - 1):
    inst->setUse(2, dest);
    break;
  default:
    std::cerr << "Invalid opcode" << inst->getOpcode() << "\n";
    nnvm_unreachable("Must be a valid branch instruction")
  }
}

LIRInstID riscv::getLoadInstType(LIRValueType type) {
  switch (type) {
  case LIRValueType::i1:
  case LIRValueType::i8:
    return LB;
  case LIRValueType::i16:
    return LH;
  case LIRValueType::i32:
    return LW;
  case LIRValueType::i64:
    return LD;
  case LIRValueType::Float:
    return FLW;
  case LIRValueType::Double:
    return FLD;
  default:
    std::cerr << (int)type << "\n";
    nnvm_unreachable("Not implemented");
  }
}

LIRInstID riscv::getStoreInstType(LIRValueType type) {
  switch (type) {
  case LIRValueType::i1:
  case LIRValueType::i8:
    return SB;
  case LIRValueType::i16:
    return SH;
  case LIRValueType::i32:
    return SW;
  case LIRValueType::i64:
    return SD;
  case LIRValueType::Float:
    return FSW;
  case LIRValueType::Double:
    return FSD;
  default:
    nnvm_unimpl();
  }
}
std::set<Register *> riscv::getDefsOf(LIRInst *inst) {
  std::set<Register *> ret;
  for (const LowOperand &operand : inst->operands) {
    LIRValue *value = operand.getOperand();
    if (operand.isDef() && value->isReg())
      ret.insert(value->as<Register>());
  }

  if (inst->getOpcode() == CALL) {
    LIRModule *module = inst->getParent()->getParent()->getParent();
    for (uint64_t regId : callerSavedRegIds()) {
      Register *reg = module->getPhyReg(regId);
      ret.insert(reg);
    }
  }
  return ret;
}

std::set<Register *> riscv::getUsesOf(LIRInst *inst) {
  std::set<Register *> ret;
  for (const LowOperand &operand : inst->operands) {
    LIRValue *value = operand.getOperand();
    if (operand.isUse() && value->isReg())
      ret.insert(value->as<Register>());
  }

  if (inst->getOpcode() == CALL) {
    LIRModule *module = inst->getParent()->getParent()->getParent();
    for (uint64_t regId : callerSavedRegIds()) {
      Register *reg = module->getPhyReg(regId);
      ret.insert(reg);
    }
  }
  return ret;
}

std::set<Register *> riscv::getScratchRegs(LIRModule *M) {
  return {M->getPhyReg(T5)};
}

static std::unique_ptr<LIRGlobalName> roundingNames[RM_END] = {
    [RNE] = std::make_unique<LIRGlobalName>("rne"),
    [RTZ] = std::make_unique<LIRGlobalName>("rtz"),
    [RDN] = std::make_unique<LIRGlobalName>("rdn"),
    [RUP] = std::make_unique<LIRGlobalName>("rup"),
    [RMM] = std::make_unique<LIRGlobalName>("rmm"),
};

LIRGlobal *riscv::getRoundingModeValue(RoundingMode mode) {
  return roundingNames[mode].get();
}
