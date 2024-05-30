#pragma once

#include "Backend/RISCV/LowIR.h"
#include <set>
namespace nnvm::riscv {

struct LiveInterval {
public:
  Register *reg;
  uint64_t begin;
  uint64_t end;
};

struct IntervalCompare {
public:
  bool operator()(const LiveInterval &a, const LiveInterval &b) const {
    return a.end < b.end;
  }
};

class LiveIntervalAnalysis {
public:
  bool runOn(LIRFunc &func);

  // Calculate the assigned index of specific instruction.
  uint64_t indexOf(LIRBB *BB, uint64_t localIndex);
  std::multiset<LiveInterval, IntervalCompare> result();

private:
  // We assign numbers in order of basicblock
  std::unordered_map<LIRBB *, uint64_t> BBNumber;

  std::unordered_map<Register *, LiveInterval> regToIntervals;
  std::multiset<LiveInterval, IntervalCompare> intervals;
};
} /* namespace nnvm::riscv */
