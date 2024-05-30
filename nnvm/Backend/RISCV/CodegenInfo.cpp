#include "CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Utils/Debug.h"
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

// std::vector<uint64_t> riscv::unpreservedFRegs() {
//// TODO:
// nnvm_unimpl();
//}

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

LIRBB *riscv::getBranchDest(LIRInst *inst) {
  switch (inst->getOpcode()) {
  case JAL:
    return inst->getOp(1)->as<LIRBB>();
  case JALR:
    return nullptr;
  case (B_BEGIN + 1)...(B_END - 1):
    return inst->getOp(2)->as<LIRBB>();
  default:
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
  case LIRValueType::Imm:
  case LIRValueType::Float:
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
    return FLW;
  case LIRValueType::Imm:
    nnvm_unreachable("Not implemented");
  }
}
