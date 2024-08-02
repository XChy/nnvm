#pragma once

#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"
#include <unordered_map>

namespace nnvm {
namespace riscv {

class DepGraph {
public:
  struct DepEdge {
    uint priority;
  };

  enum DepType {
    RAW, // Read after write
    WAW, // Write after write
    WAR, // Write after read
  };

  void addEdge(LIRInst *from, LIRInst *to) {
    // TODO:
  }

private:
  std::unordered_map<LIRInst *, std::map<LIRInst *, DepEdge>> edges;
};

// Scheduler: Reorder instructions within single basic block to maximize LIP and
// make use of super-scalar ability of the processor. We implement it with list
// scheduling method by Keith D. Cooper.
class Scheduler {
public:
  bool schedule(LIRFunc &F);

private:
  bool scheduleBlock(LIRBB *BB);
  DepGraph buildDepGraph(LIRBB *block);
};

} // namespace riscv
} // namespace nnvm
