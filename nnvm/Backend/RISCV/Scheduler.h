#pragma once

#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"
#include <unordered_map>

namespace nnvm {
namespace riscv {

class DepGraph {
public:
  enum DepType {
    RAW, // Read after write
    WAW, // Write after write
    WAR, // Write after read
  };

  struct DepEdge {
    DepType type;
  };

  void addNode(LIRInst *node) { nodes.push_back(node); }
  std::vector<LIRInst *> getNodes() const { return nodes; }

  void addEdge(LIRInst *from, LIRInst *to, DepType type = RAW) {
    toEdges[from][to] = {type};
    fromEdges[to][from] = {type};
  }

  std::map<LIRInst *, DepEdge> getToEdges(LIRInst *I) { return toEdges[I]; }
  std::map<LIRInst *, DepEdge> getFromEdges(LIRInst *I) { return fromEdges[I]; }

  void computePriority();
  uint getPriority(LIRInst *node) const { return priorities.at(node); }

  bool isRoot(LIRInst *node);

private:
  std::unordered_map<LIRInst *, std::map<LIRInst *, DepEdge>> toEdges;
  std::unordered_map<LIRInst *, std::map<LIRInst *, DepEdge>> fromEdges;
  std::unordered_map<LIRInst *, uint> priorities;
  std::vector<LIRInst *> nodes;
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
