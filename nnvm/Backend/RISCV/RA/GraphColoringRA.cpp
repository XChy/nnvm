#include "GraphColoringRA.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/StackSlot.h"
#include "Utils/Debug.h"
#include <Backend/RISCV/Analysis/LivenessAnalysis.h>
#include <iterator>

using namespace nnvm::riscv;

static int K = 32;

static bool isSameClass(Register *a, Register *b) {
  return !(a->isFP() ^ b->isFP());
}

/**
 * Construct the interference graph, categorize each node as either move-related or non-move-related.
 */
void GraphColoringRA::build(LIRFunc &func, LivenessAnalysis &la) {
  auto liveOutRegs = la.getLiveOut();
  for (auto *bb : func) {
    // get live out registers of bb
    std::set<Register *> liveRegs;
    if (liveOutRegs.count(bb)) {
      liveRegs = liveOutRegs.at(bb);
    }
    std::vector<LIRInst *> instructions; // instructions in reverse order
    for (auto inst : bb->getInsts()) {
      instructions.insert(instructions.begin(), inst);
    }
    for (auto inst : instructions) {
      size_t numOp = inst->getNumOp();
      for (size_t i = 0; i < numOp; i++) {
        auto op = inst->getOp(i);
        if (op->isVReg()) {
          initial.insert(op->as<Register>());
        } else if (op->isPReg()) {
          precolored.insert(op->as<Register>());
        }
      }

      auto defs = getDefsOf(inst);
      auto uses = getUsesOf(inst);
      if (inst->isMoveInst()) {
        for (auto use : uses) {
          liveRegs.erase(use);
          moveList[use].insert(inst);
        }
        for (auto def : defs) {
          moveList[def].insert(inst);
        }
        worklistMoves.insert(inst);
      }
      for (auto def : defs) {
        for (auto reg : liveRegs) {
          addEdge(def, reg);
        }
      }
      for (auto def : defs) {
        liveRegs.erase(def);
      }
      liveRegs.insert(uses.begin(), uses.end());
    }
  }
}

/**
 * Helper for coalescing. Add edge to the interference graph.
 */
void GraphColoringRA::addEdge(Register *u, Register *v) {
  if (adjSet.count(std::pair(u, v))) {
    return;
  }
  adjSet.insert(std::pair(u, v));
  adjSet.insert(std::pair( v, u));
  if (!precolored.count(u)) {
    adjList[u].insert(v);
    degree[u]++;
  }
  if (!precolored.count(v)) {
    adjList[v].insert(u);
    degree[v]++;
  }
}

/**
 * Categorize initial nodes.
 */
void GraphColoringRA::makeWorkList() {
  for (auto reg : initial) {
    initial.erase(reg);
    if (degree[reg] >= K) {
      spillWorklist.insert(reg);
    } else if (moveRelated(reg)) {
      freezeWorklist.insert(reg);
    } else {
      simplifyWorklist.insert(reg);
    }
  }
}

/**
 * Helper for simplification. Collect nodes adjacent to the given node.
 * @returns the set of nodes adjacent to the given node.
 */
std::set<Register *> GraphColoringRA::adjacent(Register *reg) {
  std::set<Register *> set;
  for (auto adj : adjList[reg]) {
    if (!selectStack.count(reg) && !coalescedNodes.count(reg)) {
      set.insert(adj);
    }
  }
  return set;
}

/**
 * Helper for simplification. Collect move instructions related to the given node.
 * @returns the set of move instructions related to the given node.
 */
std::set<LIRInst *> GraphColoringRA::nodeMoves(Register *reg) {
  std::set<LIRInst *> set;
  for (auto inst : moveList[reg]) {
    if (activeMoves.count(inst) || worklistMoves.count(inst)) {
      set.insert(inst);
    }
  }
  return set;
}

/**
 * Helper for simplification. Check if the given node is move-related.
 * @returns true if the given node is move-related, false otherwise.
 */
bool GraphColoringRA::moveRelated(Register *reg) {
  return !nodeMoves(reg).empty();
}

/**
 * Remove non-move-related node of low degree from the graph one at a time.
 */
void GraphColoringRA::simplify() {
  auto reg = *simplifyWorklist.begin();
  simplifyWorklist.erase(reg);
  selectStack.insert(reg);
  for (auto adj : adjacent(reg)) {
    decrementDegree(adj);
  }
}

/**
 * Helper for simplification. Decrement the degree of the given node.
 */
void GraphColoringRA::decrementDegree(Register *reg) {
  int d = degree[reg];
  degree[reg] = d - 1;
  if (d == K) {
    auto adjRegs = adjacent(reg);
    adjRegs.insert(reg);
    enableMoves(adjRegs);
    spillWorklist.erase(reg);
    if (moveRelated(reg)) {
      freezeWorklist.insert(reg);
    } else {
      simplifyWorklist.insert(reg);
    }
  }
}

/**
 * Helper for simplification. Enable move instructions related to the given node.
 */
void GraphColoringRA::enableMove(Register *node) {
  for (auto move : nodeMoves(node)) {
    if (activeMoves.count(move)) {
      activeMoves.erase(move);
      worklistMoves.insert(move);
    }
  }
}

/**
 * Helper for simplification. Enable move instructions related to the given set of nodes.
 */
void GraphColoringRA::enableMoves(std::set<Register *> &nodes) {
  for (auto reg : nodes) {
    enableMove(reg);
  }
}

/**
 * Helper for coalescing. Add a frozen node to the simplify work list.
 */
void GraphColoringRA::addWorkList(Register *reg) {
  if (!precolored.count(reg) && !moveRelated(reg) && degree[reg] < K) {
    freezeWorklist.erase(reg);
    simplifyWorklist.insert(reg);
  }
}

/**
 * Helper for coalescing. Offer the heuristic to coalesce a set of precolored register.
 */
bool GraphColoringRA::ok(std::set<Register *> &regs, Register *target) {
  for (auto reg : regs) {
    if (degree[reg] >= K && precolored.count(reg) && adjSet.count(std::pair(reg, target))) {
      return false;
    }
  }
  return true;
}

/**
 * Helper for coalescing. Offer the conservative coalescing heuristic.
 */
bool GraphColoringRA::conservative(std::set<Register *> &nodes) {
  int k = 0;
  for (auto reg : nodes) {
    if (degree[reg] >= K) {
      k++;
    }
  }
  return k < K;
}

/**
 * Perform conservative coalescing on the reduced graph obtained in the simplification phase.
 */
void GraphColoringRA::coalesce() {
  auto move = *worklistMoves.begin();
  worklistMoves.erase(move);
  auto x = getAlias(move->getOp(0)->as<Register>());
  auto y = getAlias(move->getOp(1)->as<Register>());
  Register *u, *v;
  if (precolored.count(y)) {
    u = y;
    v = x;
  } else {
    u = x;
    v = y;
  }
  std::set<Register *> adjRegs = adjacent(u);
  auto adjRegsOfV = adjacent(v);
  adjRegs.insert(adjRegsOfV.begin(), adjRegsOfV.end());
  if (u == v) {
    coalescedMoves.insert(move);
    addWorkList(u);
  } else if (precolored.count(v) || adjSet.count(std::pair(u, v))) {
    constrainedMoves.insert(move);
    addWorkList(u);
    addWorkList(v);
  } else if ((precolored.count(u) && ok(adjRegsOfV, u))
      || (!precolored.count(u) && conservative(adjRegs))) {
    coalescedMoves.insert(move);
    combine(u, v);
    addWorkList(u);
  } else {
    activeMoves.insert(move);
  }
}

/**
 * Helper for coalescing. Combine two nodes.
 */
void GraphColoringRA::combine(Register *u, Register *v) {
  if (freezeWorklist.count(v)) {
    freezeWorklist.erase(v);
  } else {
    spillWorklist.erase(v);
  }
  coalescedNodes.insert(v);
  alias[v] = u;
  moveList[u].insert(moveList[v].begin(), moveList[v].end());
  enableMove(v);
  for (auto adj : adjacent(v)) {
    addEdge(adj, u);
    decrementDegree(adj);
  }
  if (degree[u] >= K && freezeWorklist.count(u)) {
    freezeWorklist.erase(u);
    spillWorklist.insert(u);
  }
}

/**
 * Helper for coalescing. All the coalesced nodes are aliased to the same node.
 * @returns the alias of the given node.
 */
Register *GraphColoringRA::getAlias(Register *reg) {
  while (coalescedNodes.count(reg)) {
    reg = alias[reg];
  }
  return reg;
}

/**
 * Freeze, i.e. give up the hope of coalescing a move-related node of low degree.
 */
void GraphColoringRA::freeze() {
  auto u = *freezeWorklist.begin();
  freezeWorklist.erase(u);
  simplifyWorklist.insert(u);
  freezeMoves(u);
}

/**
 * Helper for freezing. Freeze move instructions related to the given node.
 */
void GraphColoringRA::freezeMoves(Register *reg) {
  for (auto move : nodeMoves(reg)) {
    auto x = move->getOp(0)->as<Register>();
    auto y = move->getOp(1)->as<Register>();
    Register *target;
    if (getAlias(y) == getAlias(reg)) {
      target = getAlias(x);
    } else {
      target = getAlias(y);
    }
    activeMoves.erase(move);
    frozenMoves.insert(move);
    if (freezeWorklist.count(target) && nodeMoves(target).empty()) {
      freezeWorklist.erase(target);
      simplifyWorklist.insert(target);
    }
  }
}

/**
 * Select a node to spill.
 */
void GraphColoringRA::selectSpill() {
  auto m = *spillWorklist.begin(); // TODO: select using favorite heuristic
  spillWorklist.erase(m);
  simplifyWorklist.insert(m);
  freezeMoves(m);
}

/**
 * Assign colors to the nodes.
 */
void GraphColoringRA::assignColors() {
  while (!selectStack.empty()) {
    auto reg = *selectStack.begin();
    selectStack.erase(reg);
    std::set<int> okColors;
    for (int i = 0; i < K; i++) {
      okColors.insert(i);
    }
    for (auto adj : adjList[reg]) {
      if (coloredNodes.count(getAlias(adj)) || precolored.count(getAlias(adj))) {
        okColors.erase(color[getAlias(adj)]);
      }
    }
    if (okColors.empty()) {
      spilledNodes.insert(reg);
    } else {
      coloredNodes.insert(reg);
      color[reg] = *okColors.begin();
    }
  }
  for (auto reg : coalescedNodes) {
    color[reg] = color[getAlias(reg)];
  }
}

void GraphColoringRA::rewriteProgram(LIRFunc &func) {
  // allocate memory locations for each v in spilledNodes
  // create a new temporary v_i for each definition and each use, in instructions, insert a store after each definition of a v_i, a fetch before each use of a v_i
  // put all the v_i into a set newTemps
  std::set<Register *> newTemp;
  
  spilledNodes.clear();
  initial.clear();
  initial.insert(coloredNodes.begin(), coloredNodes.end());
  initial.insert(coalescedNodes.begin(), coalescedNodes.end());
  initial.insert(newTemp.begin(), newTemp.end());
  coloredNodes.clear();
  coalescedNodes.clear();
}

void GraphColoringRA::allocate(LIRFunc &func) {
  while (true) {
    LivenessAnalysis la;
    la.runOn(func);
    build(func, la);
    makeWorkList();
    do {
      if (!simplifyWorklist.empty()) {
        simplify();
      } else if (!worklistMoves.empty()) {
        coalesce();
      } else if (!freezeWorklist.empty()) {
        freeze();
      } else if (!spillWorklist.empty()) {
        selectSpill();
      }
    } while (!simplifyWorklist.empty() && !worklistMoves.empty()
        && !freezeWorklist.empty() && !spillWorklist.empty());
    assignColors();
    if (spilledNodes.empty()) {
      break;
    }
    rewriteProgram(func);
  };
}
