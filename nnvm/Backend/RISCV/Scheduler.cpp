#include "Scheduler.h"

using namespace nnvm::riscv;

bool Scheduler::schedule(LIRFunc &F) {
  for (auto *block : F)
    scheduleBlock(block);
  return true;
}

bool Scheduler::scheduleBlock(LIRBB *BB) {
  DepGraph graph = buildDepGraph(BB);
  return true;
}

DepGraph Scheduler::buildDepGraph(LIRBB *block) {
  DepGraph graph;

  // Register Dependency
  for (LIRInst *inst : *block) {
  }

  // Memory Dependency
  return graph;
}
