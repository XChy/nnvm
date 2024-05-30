#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include <cstdint>
#include <string>
#include <vector>

namespace nnvm::riscv {

std::vector<const char *> getGPRNames();

static inline uint64_t getFrameAlign() { return 8; }

// ID of specific general-purpose register
// uint64_t getFPRegID(const std::string &name);

//// ID of integer register for return value
// LIRValue *getRetReg();

//// ID of stack pointer register
// LIRValue *getSPReg(LIRValueType type = LIRValueType::i64);

//// ID of zero register
// LIRValue *getZeroReg();

//// ID of return address register
// Register *getRAReg(LIRValueType type = LIRValueType::i64);

// Integer registers for argument
std::vector<Register *> getArgGPRs(LIRModule *M);
// Float registers for argument
std::vector<Register *> getArgFPRs(LIRModule *M);

//// Return the list of unpreserved register across calls.
std::vector<Register *> unpreservedRegs(LIRModule *M);
// std::vector<uint64_t> unpreservedFRegs();

bool isBranch(uint64_t instType);
LIRBB *getBranchDest(LIRInst *inst);

LIRInstID getLoadInstType(LIRValueType type);
LIRInstID getStoreInstType(LIRValueType type);

} /* namespace nnvm::riscv */
