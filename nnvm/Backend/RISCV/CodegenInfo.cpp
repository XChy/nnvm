#include "CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include <string>
#include <unordered_map>

using namespace nnvm;
using namespace nnvm::riscv;

// General purpose registers
static std::vector<const char *> gprs = {
    "zero", "ra", "sp", "gp", "tp",  "t0",  "t1", "t2", "s0", "s1", "a0",
    "a1",   "a2", "a3", "a4", "a5",  "a6",  "a7", "s2", "s3", "s4", "s5",
    "s6",   "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6",
};

// Floating-point registers
static std::vector<const char *> fprs = {
    "ft0", "ft1",  "ft2",  "ft2", "ft3", "ft4",  "ft5", "ft6", "ft7",
    "fs0", "fs1",  "fa0",  "fa1", "fa2", "fa2",  "fa3", "fa4", "fa5",
    "fa6", "fa7",  "fs2",  "fs3", "fs4", "fs5",  "fs6", "fs7", "fs8",
    "fs9", "fs10", "fs11", "ft8", "ft9", "ft10", "ft11"};

std::vector<const char *> riscv::getGPRNames() { return gprs; }

template <typename MapFunc>
static std::vector<uint64_t> mapToID(std::vector<std::string> strs,
                                     MapFunc map) {
  std::vector<uint64_t> result;
  for (auto str : strs)
    result.push_back(map(str));
  return result;
}

uint64_t riscv::getGPRegID(const std::string &name) {
  static std::unordered_map<std::string, uint64_t> nameToIndex;

  if (nameToIndex.empty())
    for (size_t i = 0; i < gprs.size(); i++)
      nameToIndex[gprs[i]] = i;

  return nameToIndex[name];
}

uint64_t riscv::getFPRegID(const std::string &name) {
  static std::unordered_map<std::string, uint64_t> nameToIndex;

  if (nameToIndex.empty())
    for (size_t i = 0; i < gprs.size(); i++)
      nameToIndex[fprs[i]] = i;

  return nameToIndex[name];
}

static inline LowOperand getGPR(uint64_t id, LowOperand::LowValueType type) {
  return LowOperand{
      .type = LowOperand::GPRegister, .valueType = type, .regId = id};
}

uint64_t riscv::getRetRegID() { return getGPRegID("a0"); }

LowOperand riscv::getRetReg(LowOperand::LowValueType type) {
  return getGPR(getRetRegID(), type);
}

uint64_t riscv::getSPRegID() { return getGPRegID("sp"); }

LowOperand riscv::getSPReg(LowOperand::LowValueType type) {
  return getGPR(getSPRegID(), type);
}

uint64_t riscv::getZeroRegID() { return getGPRegID("zero"); }

LowOperand riscv::getZeroReg(LowOperand::LowValueType type) {
  return getGPR(getZeroRegID(), type);
  ;
}

uint64_t riscv::getRARegID() { return getGPRegID("ra"); }
LowOperand riscv::getRAReg(LowOperand::LowValueType type) {
  return getGPR(getRARegID(), type);
}

std::vector<uint64_t> riscv::getRegsForArg() {
  return mapToID({"a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7"}, getGPRegID);
}

std::vector<uint64_t> getFRegsForArg() {
  return mapToID({"a0", "a1", "a2", "a3", "a4", "a5", "a6", "a7"}, getFPRegID);
}

std::vector<uint64_t> riscv::unpreservedRegs() {
  return mapToID(
      {
          "ra",
          "t0",
          "t1",
          "t2",
          "t3",
          "t4",
          "t5",
          "t6",
          "a0",
          "a1",
          "a2",
          "a3",
          "a4",
          "a5",
          "a6",
          "a7",
      },
      getGPRegID);
}
std::vector<uint64_t> riscv::unpreservedFRegs() {
  // TODO:
}
