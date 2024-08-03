#include "Scheduler.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "ScheduleModel.h"

using namespace nnvm::riscv;

bool Scheduler::schedule(LIRFunc &F) {
  for (auto *block : F)
    scheduleBlock(block);
  return true;
}

bool Scheduler::scheduleBlock(LIRBB *BB) {
  DepGraph graph = buildDepGraph(BB);
  U74ScheduleModel model;
  return true;
}

DepGraph Scheduler::buildDepGraph(LIRBB *block) {
  DepGraph graph;

  // Register Dependency
  std::unordered_map<Register *, std::vector<LIRInst *>> lastUsesOf;
  std::unordered_map<Register *, LIRInst *> lastDefOf;
  for (LIRInst *inst : *block) {

    // Use dependency
    for (LowOperand &op : inst->operands) {
      if (!op.getOperand()->isReg() || !op.isUse())
        continue;
      Register *used = op.getOperand()->as<Register>();
      if (lastDefOf.count(used))
        graph.addEdge(inst, lastDefOf[used]);
      lastUsesOf[used].push_back(inst);
    }

    // Def dependency
    for (LowOperand &op : inst->operands) {
      if (!op.getOperand()->isReg() || !op.isDef())
        continue;
      Register *defined = op.getOperand()->as<Register>();
      if (!lastUsesOf[defined].empty()) {
        for (auto *user : lastUsesOf[defined])
          graph.addEdge(inst, user);
        lastUsesOf[defined].clear();
      } else if (lastDefOf.count(defined)) {
        graph.addEdge(inst, lastDefOf[defined]);
      }
      lastDefOf[defined] = inst;
    }
  }

  // Memory Dependency
  // TODO: compute dependency precisely, with simple alias analysis.

  LIRInst *lastMemInst = nullptr;
  for (LIRInst *inst : *block) {
    if (pattern::isLoadOrStore(inst) || inst->getOpcode() == CALL) {
      if (lastMemInst)
        graph.addEdge(inst, lastMemInst);
      lastMemInst = inst;
    }
  }

  return graph;
}
