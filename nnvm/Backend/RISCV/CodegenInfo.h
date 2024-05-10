#pragma once

#include "Backend/RISCV/LowIR.h"
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
uint64_t getRetRegID();

// ID of stack pointer register
uint64_t getSPRegID();
LowOperand getSPReg(LowOperand::LowValueType type);

// ID of zero register
uint64_t getZeroRegID();
LowOperand getZeroReg(LowOperand::LowValueType type);

// ID of return address register
uint64_t getRARegID();
LowOperand getRAReg(LowOperand::LowValueType type);

// Integer registers for argument
std::vector<uint64_t> getRegsForArg();
// Float registers for argument
std::vector<uint64_t> getFRegsForArg();

// Return the list of unpreserved register across calls.
std::vector<uint64_t> unpreservedRegs();
std::vector<uint64_t> unpreservedFRegs();

} /* namespace nnvm::riscv */
