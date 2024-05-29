#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <cstdint>
#include <string>
#include <vector>

namespace nnvm::riscv {

std::vector<const char *> getGPRNames();

static inline uint64_t getFrameAlign() { return 8; }

// ID of specific general-purpose register
uint64_t getGPRegID(const std::string &name);
uint64_t getFPRegID(const std::string &name);

// ID of integer register for return value
LowOperand getRetReg(LowOperand::LowValueType type);

// ID of stack pointer register
LowOperand getSPReg(LowOperand::LowValueType type = LowOperand::i64);

// ID of zero register
LowOperand getZeroReg(LowOperand::LowValueType type);

// ID of return address register
LowOperand getRAReg(LowOperand::LowValueType type = LowOperand::i64);

// Integer registers for argument
std::vector<uint64_t> getArgGPRs();
// Float registers for argument
std::vector<uint64_t> getArgFPRs();

// Return the list of unpreserved register across calls.
std::vector<uint64_t> unpreservedRegs();
std::vector<uint64_t> unpreservedFRegs();

bool isBranch(uint64_t instType);
LowBB *getBranchDest(const LowInst &inst);

LowInstType getLoadInstType(LowOperand::LowValueType type);
LowInstType getStoreInstType(LowOperand::LowValueType type);

} /* namespace nnvm::riscv */
