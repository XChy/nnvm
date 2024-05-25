#pragma once

#include "Backend/RISCV/Analysis/LiveIntervalAnalysis.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/RegisterAllocator.h"
#include <queue>
#include <set>
#include <unordered_map>
#include <unordered_set>
namespace nnvm::riscv {

class LinearScanRA : public RegisterAllocator {
public:
  void allocate(LowFunc &func);
  void expireOldInterval(const LiveInterval &current);
  uint64_t indexOf(LowBB *BB, uint64_t localIndex);

private:
  // We assign numbers in DFS order of basicblock.
  std::unordered_map<LowBB *, uint64_t> BBNumber;

  // Active virtual registers.
  std::set<LiveInterval, IntervalCompare> active;
  std::priority_queue<uint64_t> freeGPRs;
  std::unordered_map<uint64_t, uint64_t> vregToPReg;
};

} /* namespace nnvm::riscv */
