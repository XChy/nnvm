#pragma once

// ====================================================
// Implementation of linear scan register allocation in
// https://dl.acm.org/doi/10.1145/330249.330250.
// ====================================================

#include "Backend/RISCV/Analysis/LiveIntervalAnalysis.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/RegisterAllocator.h"
#include <queue>
#include <set>
#include <unordered_map>
#include <unordered_set>

namespace nnvm::riscv {

struct RegCompare {
  int scoreOf(uint64_t reg) {
    if (calleeSavedRegs().count(reg))
      return 200;
    return 100;
  }

  bool operator()(uint64_t reg1, uint64_t reg2) {
    int score1 = scoreOf(reg1);
    int score2 = scoreOf(reg2);
    if (score1 == score2)
      return reg1 > reg2;
    return score1 < score2;
  }
};

class LinearScanRA : public RegisterAllocator {
public:
  using IntervalItertator = std::set<LiveInterval, IntervalCompare>::iterator;
  void allocate(LowFunc &func);
  IntervalItertator expireOldInterval(const LiveInterval &current);
  uint64_t indexOf(LowBB *BB, uint64_t localIndex);

private:
  // We assign numbers in DFS order of basicblock.
  std::unordered_map<LowBB *, uint64_t> BBNumber;

  // Active virtual registers.
  std::set<LiveInterval, IntervalCompare> active;
  std::unordered_set<uint64_t> used;
  std::priority_queue<uint64_t, std::vector<uint64_t>, RegCompare> freeGPRs;
  std::unordered_map<uint64_t, uint64_t> vregToPReg;
  std::unordered_map<uint64_t, uint64_t> vregToStack;
  std::unordered_set<uint64_t> allocatedRegs;
};

} /* namespace nnvm::riscv */
