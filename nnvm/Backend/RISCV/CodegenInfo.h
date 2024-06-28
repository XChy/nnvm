#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include <cstdint>
#include <string>
#include <vector>

namespace nnvm::riscv {

static inline uint64_t getFrameAlign() { return 16; }
// Integer registers for argument
std::vector<Register *> getArgGPRs(LIRModule *M);
// Float registers for argument
std::vector<Register *> getArgFPRs(LIRModule *M);

//// Return the list of unpreserved register across calls.
std::vector<Register *> unpreservedRegs(LIRModule *M);
std::vector<Register *> unpreservedFRegs(LIRModule *M);

bool isBranch(uint64_t instType);
LIRBB *getBranchDest(LIRInst *inst);

LIRInstID getLoadInstType(LIRValueType type);
LIRInstID getStoreInstType(LIRValueType type);

// Include implicit uses/defs
std::set<Register *> getDefsOf(LIRInst *inst);
std::set<Register *> getUsesOf(LIRInst *inst);

// We pre-define some scratch register for convenience.
std::set<Register *> getScratchRegs(LIRModule *M);
std::set<Register *> getScratchFRegs(LIRModule *M);

} /* namespace nnvm::riscv */
