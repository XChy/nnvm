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
  int scoreOf(Register *reg) {
    if (reg->isCalleeSaved())
      return 200;
    return 100;
  }

  bool operator()(Register *reg1, Register *reg2) {
    int score1 = scoreOf(reg1);
    int score2 = scoreOf(reg2);
    if (score1 == score2)
      return reg1->getRegId() > reg2->getRegId();
    return score1 < score2;
  }
};

class LinearScanRA : public RegisterAllocator {
public:
  using IntervalItertator = std::set<LiveInterval, IntervalCompare>::iterator;
  void allocate(LIRFunc &func);
  IntervalItertator expireOldInterval(const LiveInterval &current);
  uint64_t indexOf(LIRBB *BB, uint64_t localIndex);

private:
  // We assign numbers in DFS order of basicblock.
  std::unordered_map<LIRBB *, uint64_t> BBNumber;

  // Active virtual registers.
  std::set<LiveInterval, IntervalCompare> active;
  std::unordered_set<Register *> used;
  std::priority_queue<Register *, std::vector<Register *>, RegCompare> freeGPRs;
  std::unordered_map<Register *, Register *> vregToPReg;
  std::unordered_map<Register *, StackSlot *> vregToStack;
  std::unordered_set<Register *> allocatedRegs;
};

} /* namespace nnvm::riscv */
