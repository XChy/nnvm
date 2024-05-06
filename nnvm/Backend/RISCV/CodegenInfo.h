#pragma once

#include "Backend/RISCV/LowIR.h"
#include <cstdint>
#include <string>
#include <vector>

namespace nnvm::riscv {

std::vector<const char *> getGPRNames();

uint64_t getIndexOfGPR(const std::string &name);
uint64_t getRegForRet();
uint64_t getRegIndexForStack();

LowOperand getRegForStack();

std::vector<uint64_t> getRegsForArg();
// Return the list of unpreserved register across calls.
std::vector<uint64_t> unpreservedRegs();
std::vector<uint64_t> unpreservedFRegs();

} /* namespace nnvm::riscv */
