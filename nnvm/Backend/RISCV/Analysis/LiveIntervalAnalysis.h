#pragma once

#include "Backend/RISCV/LowIR.h"
#include <set>
namespace nnvm::riscv {

struct LiveInterval {
public:
  uint64_t regId;
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
  bool runOn(LowFunc &func);

  // Calculate the assigned index of specific instruction.
  uint64_t indexOf(LowBB *BB, uint64_t localIndex);
  std::multiset<LiveInterval, IntervalCompare> result();

private:
  // We assign numbers in order of basicblock
  std::unordered_map<LowBB *, uint64_t> BBNumber;

  std::unordered_map<uint64_t, LiveInterval> regToIntervals;
  std::multiset<LiveInterval, IntervalCompare> intervals;
};
} /* namespace nnvm::riscv */
