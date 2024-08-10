#include "Scheduler.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Info/InstLatency.h"
#include "ScheduleModel.h"

using namespace nnvm::riscv;

void DepGraph::computePriority() {
  auto reversedNodes = nodes;
  std::reverse(reversedNodes.begin(), reversedNodes.end());
  for (LIRInst *node : reversedNodes) {
    if (fromEdges[node].empty()) {
      priorities[node] = getLatency(node);
    } else {
      auto dependeds = fromEdges[node];
      uint op = 0, antiop = 0;

      for (auto [inst, edge] : dependeds) {
        if (edge.type == RAW) {
          op = std::max(getPriority(inst), op);
        } else {
          antiop = std::max(getPriority(inst), antiop);
        }
      }

      priorities[node] = std::max(getLatency(node) + op, antiop);
    }
  }
}

bool DepGraph::isRoot(LIRInst *node) { return toEdges[node].empty(); }

bool Scheduler::schedule(LIRFunc &F) {
  for (auto *block : F)
    scheduleBlock(block);
  return true;
}

bool Scheduler::scheduleBlock(LIRBB *BB) {
  DepGraph graph = buildDepGraph(BB);
  U74ScheduleModel model;

  std::vector<LIRInst *> ready;
  std::unordered_map<LIRInst *, int> indexOfInst;
  std::unordered_map<LIRInst *, int> infight;
  std::unordered_set<LIRInst *> retired;

  LIRBB::Iterator insertPoint;
  for (auto *inst : incChange(*BB)) {
    if (isBranch(inst->getOpcode())) {
      insertPoint = {inst, BB};
      break;
    }

    indexOfInst.insert({inst, indexOfInst.size()});
    inst->removeFromList();

    if (graph.isRoot(inst))
      ready.push_back(inst);
  }

  auto comp = [&](LIRInst *A, LIRInst *B) {
    if (A->getOpcode() == CALL)
      return false;
    if (graph.getPriority(A) == graph.getPriority(B))
      return indexOfInst[A] > indexOfInst[B];
    return graph.getPriority(A) > graph.getPriority(B);
  };

  while (!ready.empty() || !infight.empty()) {
    std::stable_sort(ready.begin(), ready.end(), comp);
    std::set<LIRInst *> issued;

    for (LIRInst *node : ready) {
      if (model.canIssue(node)) {
        model.issue(node);
        insertPoint.insertBefore(node);
        infight.insert({node, getLatency(node)});
        issued.insert(node);
      }
    }

    ready.erase(std::remove_if(ready.begin(), ready.end(),
                               [&](auto inst) { return issued.count(inst); }),
                ready.end());

    for (auto it = infight.begin(); it != infight.end();) {
      auto node = it->first;
      auto &time = it->second;
      time--;
      if (time <= 0) {
        // Time's up, remove it from infight-list and insert it into
        // retired-list.
        it = infight.erase(it);
        retired.insert(node);

        // Try to wake up other instructions.
        auto dependers = graph.getFromEdges(node);
        for (auto [depender, edge] : dependers) {
          auto operands = graph.getToEdges(depender);
          // Add depender to ready list if all operands available.
          if (std::all_of(operands.begin(), operands.end(),
                          [&](auto op) { return retired.count(op.first); }))
            ready.push_back(depender);
        }

      } else {
        it++;
      }
    }

    model.step();
  }

  return true;
}

DepGraph Scheduler::buildDepGraph(LIRBB *block) {
  DepGraph graph;

  // Register Dependency
  std::unordered_map<Register *, std::vector<LIRInst *>> lastUsesOf;
  std::unordered_map<Register *, LIRInst *> lastDefOf;
  for (LIRInst *inst : *block) {

    if (isBranch(inst->getOpcode()))
      continue;

    graph.addNode(inst);

    // Use dependency
    auto uses = getUsesOf(inst);
    for (Register *used : uses) {
      if (lastDefOf.count(used))
        graph.addEdge(inst, lastDefOf[used], DepGraph::RAW);
      lastUsesOf[used].push_back(inst);
    }

    // Def dependency
    auto defs = getDefsOf(inst);
    for (auto *defined : defs) {
      if (!lastUsesOf[defined].empty()) {
        for (auto *user : lastUsesOf[defined])
          if (user != inst)
            graph.addEdge(inst, user, DepGraph::WAR);
        lastUsesOf[defined].clear();
      } else if (lastDefOf.count(defined)) {
        graph.addEdge(inst, lastDefOf[defined], DepGraph::WAW);
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

  graph.computePriority();
  return graph;
}
