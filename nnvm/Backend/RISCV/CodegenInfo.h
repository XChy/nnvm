#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include <cstdint>
#include <vector>

namespace nnvm::riscv {

struct CompareReg {
  bool operator()(Register *A, Register *B) const {
    return A->getRegId() > B->getRegId();
  }
};
typedef std::set<Register *, CompareReg> RegSet;

static inline uint64_t getFrameAlign() { return 16; }
static inline uint64_t getMaxMemAlign() { return 8; }
// Integer registers for argument
std::vector<Register *> getArgGPRs(LIRModule *M);
// Float registers for argument
std::vector<Register *> getArgFPRs(LIRModule *M);

//// Return the list of unpreserved register across calls.
std::vector<Register *> unpreservedRegs(LIRModule *M);
std::vector<Register *> unpreservedFRegs(LIRModule *M);

bool isBranch(uint64_t instType);
LIRBB *getBranchDest(const LIRInst *inst);
void setBranchDest(LIRInst *inst, LIRBB *dest);

LIRInstID getLoadInstType(LIRValueType type);
LIRInstID getStoreInstType(LIRValueType type);

// Include implicit uses/defs
RegSet getDefsOf(LIRInst *inst);
RegSet getUsesOf(LIRInst *inst);

// We pre-define some scratch register for convenience.
std::set<Register *> getScratchRegs(LIRModule *M);

enum RoundingMode { RNE, RTZ, RDN, RUP, RMM, RM_END };

LIRGlobal *getRoundingModeValue(RoundingMode mode);

} /* namespace nnvm::riscv */
