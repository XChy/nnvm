#pragma once

// ====================================================
// Implementation of register allocation by graph coloring.
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

class GraphColoringRA : public RegisterAllocator {
public:
  void allocate(LIRFunc &func);

private:
  // We assign numbers in DFS order of basicblock.
  std::unordered_map<LIRBB *, uint64_t> BBNumber;

  // Active virtual registers.
  std::multiset<LiveInterval, IntervalEndCompare> active;
  std::unordered_set<Register *> used;
  std::set<Register *> freeRegs;
};

} /* namespace nnvm::riscv */
