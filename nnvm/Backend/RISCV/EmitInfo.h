#pragma once

#include <cstdint>
#include <unordered_map>

namespace nnvm::riscv {

class LowBB;

class EmitInfo {
public:
  EmitInfo() : blockCount(0) {}

  uint64_t allocBB(LowBB *bb) {
    bbToIndex[bb] = blockCount;
    blockCount++;
    return bbToIndex[bb];
  }

  uint64_t indexOfBB(LowBB *bb) { return bbToIndex[bb]; }

private:
  uint64_t blockCount;
  std::unordered_map<LowBB *, uint64_t> bbToIndex;
};
} /* namespace nnvm::riscv */
