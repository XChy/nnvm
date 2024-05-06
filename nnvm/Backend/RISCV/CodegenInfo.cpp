#include "CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include <string>
#include <unordered_map>

using namespace nnvm;
using namespace nnvm::riscv;

static std::vector<const char *> gprs = {
    "zero", "ra", "sp", "gp", "tp",  "t0",  "t1", "t2", "s0", "s1", "a0",
    "a1",   "a2", "a3", "a4", "a5",  "a6",  "a7", "s2", "s3", "s4", "s5",
    "s6",   "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6",
};

std::vector<const char *> riscv::getGPRNames() { return gprs; }

static std::vector<uint64_t> mapToIndex(std::vector<std::string> strs) {
  std::vector<uint64_t> result;
  for (auto str : strs)
    result.push_back(getIndexOfGPR(str));
  return result;
}

uint64_t riscv::getIndexOfGPR(const std::string &name) {
  static std::unordered_map<std::string, uint64_t> nameToIndex;

  if (nameToIndex.empty())
    for (size_t i = 0; i < gprs.size(); i++)
      nameToIndex[gprs[i]] = i;

  return nameToIndex[name];
}

uint64_t riscv::getRegForRet() { return getIndexOfGPR("a0"); }

uint64_t riscv::getRegIndexForStack() { return getIndexOfGPR("sp"); }

LowOperand riscv::getRegForStack() {
  return LowOperand{.type = LowOperand::GPRegister,
                    .valueType = LowOperand::i64,
                    .registerIndex = getRegIndexForStack()};
}

std::vector<uint64_t> riscv::getRegsForArg() {
  return {getIndexOfGPR("a0"), getIndexOfGPR("a1"), getIndexOfGPR("a2"),
          getIndexOfGPR("a3"), getIndexOfGPR("a4"), getIndexOfGPR("a5"),
          getIndexOfGPR("a6"), getIndexOfGPR("a7")};
}

std::vector<uint64_t> riscv::unpreservedRegs() {
  return mapToIndex({
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
  });
}
std::vector<uint64_t> riscv::unpreservedFRegs() {
  // TODO:
}
