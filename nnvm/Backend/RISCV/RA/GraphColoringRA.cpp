#include "GraphColoringRA.h"
#include "ADT/Ranges.h"
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

static bool isSameClass(Register const *a, Register const *b) {
  return !(a->isFP() ^ b->isFP());
}

static void filterRegClass(std::set<Register *> &c, Register const *classReg) {
  for (auto first = c.begin(), last = c.end(); first != last;) {
    if (!isSameClass(*first, classReg)) {
      first = c.erase(first);
    } else {
      ++first;
    }
  }
}

GraphColoringRAImpl::GraphColoringRAImpl(std::vector<Register *> const &regs,
                                         Register *classReg)
    : freeRegs(regs), classReg(classReg), numRegs(regs.size()) {

  std::sort(freeRegs.begin(), freeRegs.end(), [](Register *A, Register *B) {
    if (A->isCalleeSaved() == B->isCalleeSaved())
      return A->getRegId() < B->getRegId();
    return A->isCalleeSaved() < B->isCalleeSaved();
  });

  uint colored = 0;
  for (Register *reg : freeRegs) {
    color[reg] = colored++;
    color2PhyReg[color[reg]] = reg;
  }
}

/**
 * Construct the interference graph, categorize each node as either move-related
 * or non-move-related.
 */
void GraphColoringRAImpl::build(LIRFunc &func, LivenessAnalysis const &la) {
  auto liveOutRegs = la.getLiveOut();

  for (auto *bb : func) {
    std::set<Register *> liveRegs = liveOutRegs[bb];
    filterRegClass(liveRegs, classReg);

    for (Register *liveRegA : liveRegs) {
      for (Register *liveRegB : liveRegs) {
        addEdge(liveRegA, liveRegB);
      }
    }

    // visit instructions in reverse order
    for (auto it = bb->end(); it != bb->begin(); it--) {
      auto prev = it;
      LIRInst *inst = *(--prev);
      auto defs = getDefsOf(inst);
      auto uses = getUsesOf(inst);
      filterRegClass(defs, classReg);
      filterRegClass(uses, classReg);
      std::set<Register *> realOps = defs;
      realOps.insert(uses.begin(), uses.end());

      for (auto reg : realOps) {
        if (initial.count(reg) || precolored.count(reg)) {
          continue;
        }
        if (reg->isVReg()) {
          initial.insert(reg);
        } else if (reg->isPReg()) {
          precolored.insert(reg);
          degree[reg] = INT32_MAX;
        }
      }

      if (inst->isMoveInst(func) && isSameClass(inst->getOp(0)->as<Register>(), classReg)) {
        for (auto use : uses) {
          liveRegs.erase(use);
          moveList[use].insert(inst);
        }
        for (auto def : defs) {
          moveList[def].insert(inst);
        }
        worklistMoves.insert(inst);
      }

      // liveRegs = (liveRegs - defs) + uses
      for (auto def : defs) {
        liveRegs.erase(def);
      }
      liveRegs.insert(uses.begin(), uses.end());

      for (Register *liveRegA : uses) {
        for (Register *liveRegB : uses) {
          addEdge(liveRegA, liveRegB);
        }
        for (Register *liveRegB : liveRegs) {
          addEdge(liveRegA, liveRegB);
        }
      }
    }
  }
}

/**
 * Helper for coalescing. Add edge to the interference graph.
 */
void GraphColoringRAImpl::addEdge(Register *u, Register *v) {
  if (u == v || adjSet.count(std::pair(u, v))) {
    return;
  }
  adjSet.insert(std::pair(u, v));
  adjSet.insert(std::pair(v, u));
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
void GraphColoringRAImpl::makeWorkList() {
  for (auto reg : initial) {
    if (degree[reg] >= numRegs) {
      spillWorklist.insert(reg);
    } else if (moveRelated(reg)) {
      freezeWorklist.insert(reg);
    } else {
      simplifyWorklist.insert(reg);
    }
  }
  initial.clear();
}

/**
 * Helper for simplification. Collect nodes adjacent to the given node.
 * @returns the set of nodes adjacent to the given node.
 */
std::set<Register *> GraphColoringRAImpl::adjacent(Register *reg) {
  std::set<Register *> set;
  for (auto adj : adjList[reg]) {
    if (!selectedNodes.count(adj) && !coalescedNodes.count(adj)) {
      set.insert(adj);
    }
  }
  return set;
}

/**
 * Helper for simplification. Collect move instructions related to the given
 * node.
 * @returns the set of move instructions related to the given node.
 */
std::set<LIRInst *> GraphColoringRAImpl::nodeMoves(Register *reg) {
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
bool GraphColoringRAImpl::moveRelated(Register *reg) {
  return !nodeMoves(reg).empty();
}

/**
 * Remove non-move-related node of low degree from the graph one at a time.
 */
void GraphColoringRAImpl::simplify() {
  auto reg = *simplifyWorklist.begin();
  simplifyWorklist.erase(reg);
  selectStack.push(reg);
  selectedNodes.insert(reg);
  for (auto adj : adjacent(reg)) {
    decrementDegree(adj);
  }
}

/**
 * Helper for simplification. Decrement the degree of the given node.
 */
void GraphColoringRAImpl::decrementDegree(Register *reg) {
  int d = degree[reg];
  if (d == INT32_MAX) {
    return;
  }
  degree[reg] = d - 1;
  if (d == numRegs) {
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
 * Helper for simplification. Enable move instructions related to the given
 * node.
 */
void GraphColoringRAImpl::enableMove(Register *node) {
  for (auto move : nodeMoves(node)) {
    if (activeMoves.count(move)) {
      activeMoves.erase(move);
      worklistMoves.insert(move);
    }
  }
}

/**
 * Helper for simplification. Enable move instructions related to the given set
 * of nodes.
 */
void GraphColoringRAImpl::enableMoves(std::set<Register *> const &nodes) {
  for (auto reg : nodes) {
    enableMove(reg);
  }
}

/**
 * Helper for coalescing. Add a frozen node to the simplify work list.
 */
void GraphColoringRAImpl::addWorkList(Register *reg) {
  if (!precolored.count(reg) && !moveRelated(reg) && degree[reg] < numRegs) {
    freezeWorklist.erase(reg);
    simplifyWorklist.insert(reg);
  }
}

/**
 * Helper for coalescing. Heuristic by George to determine
 *  if all neighbors of one node interfere with target node or
 *  if the node has fewer than numRegs edges.
 */
bool GraphColoringRAImpl::conformGeorges(std::set<Register *> const &neighbors,
                                         Register *target) {
  return std::all_of(neighbors.begin(), neighbors.end(), [this, target](Register *reg) {
    return degree[reg] < numRegs || precolored.count(reg) ||
           adjSet.count(std::pair(reg, target));
  });
}

/**
 * Helper for coalescing. Heuristic by Briggs to determine
 *  if there are fewer than numRegs neighbors with significant degree.
 */
bool GraphColoringRAImpl::conformBriggs(std::set<Register *> const &neighbors) {
  return std::count_if(neighbors.begin(), neighbors.end(), [this](Register *reg) {
    return degree[reg] >= numRegs;
  }) < numRegs;
}

/**
 * Perform heuristic coalescing on the reduced graph obtained in the
 *  simplification phase.
 */
void GraphColoringRAImpl::coalesce() {
  auto move = *worklistMoves.begin();
  worklistMoves.erase(move);
  auto first = getAlias(move->getOp(0)->as<Register>());
  auto second = getAlias(move->getOp(1)->as<Register>());
  Register *dest, *src;
  if (precolored.count(second)) {
    dest = second;
    src = first;
  } else {
    dest = first;
    src = second;
  }
  std::set<Register *> adjRegs = adjacent(dest);
  auto adjRegsOfSrc = adjacent(src);
  adjRegs.insert(adjRegsOfSrc.begin(), adjRegsOfSrc.end());
  if (dest == src) {
    coalescedMoves.insert(move);
    addWorkList(dest);
  } else if (precolored.count(src) || adjSet.count(std::pair(dest, src))) {
    constrainedMoves.insert(move);
    addWorkList(dest);
    addWorkList(src);
  } else if (precolored.count(dest) && conformGeorges(adjRegsOfSrc, dest) ||
             !precolored.count(dest) && conformBriggs(adjRegs)) {
    coalescedMoves.insert(move);
    combine(dest, src);
    addWorkList(dest);
  } else {
    activeMoves.insert(move);
  }
}

/**
 * Helper for coalescing. Combine two nodes.
 */
void GraphColoringRAImpl::combine(Register *dest, Register *src) {
  if (freezeWorklist.count(src)) {
    freezeWorklist.erase(src);
  } else {
    spillWorklist.erase(src);
  }
  coalescedNodes.insert(src);
  alias[src] = dest;
  moveList[dest].insert(moveList[src].begin(), moveList[src].end());
  enableMove(src);
  for (auto adj : adjacent(src)) {
    addEdge(adj, dest);
    decrementDegree(adj);
  }
  if (degree[dest] >= numRegs && freezeWorklist.count(dest)) {
    freezeWorklist.erase(dest);
    spillWorklist.insert(dest);
  }
  debug(std::cerr << "Combination: " << getNameForRegister(src->getRegId()) << " -> " << getNameForRegister(dest->getRegId()) << "\n");
}

/**
 * Helper for coalescing. All the coalesced nodes are aliased to the same node.
 * @returns the alias of the given node.
 */
Register *GraphColoringRAImpl::getAlias(Register *reg) {
  while (coalescedNodes.count(reg)) {
    reg = alias[reg];
  }
  return reg;
}

/**
 * Freeze, i.e. give up the hope of coalescing a move-related node of low
 * degree.
 */
void GraphColoringRAImpl::freeze() {
  auto u = *freezeWorklist.begin();
  freezeWorklist.erase(u);
  simplifyWorklist.insert(u);
  freezeMoves(u);
}

/**
 * Helper for freezing. Freeze move instructions related to the given node.
 */
void GraphColoringRAImpl::freezeMoves(Register *reg) {
  for (auto move : nodeMoves(reg)) {
    auto first = move->getOp(0)->as<Register>();
    auto second = move->getOp(1)->as<Register>();
    Register *dest;
    if (getAlias(second) == getAlias(reg)) {
      dest = getAlias(first);
    } else {
      dest = getAlias(second);
    }
    activeMoves.erase(move);
    frozenMoves.insert(move);
    if (freezeWorklist.count(dest) && nodeMoves(dest).empty()) {
      freezeWorklist.erase(dest);
      simplifyWorklist.insert(dest);
    }
  }
}

/**
 * Select a node to spill.
 */
void GraphColoringRAImpl::selectSpill() {
  auto m = *spillWorklist.begin(); // TODO: select using favorite heuristic
  spillWorklist.erase(m);
  simplifyWorklist.insert(m);
  freezeMoves(m);
}

/**
 * Assign colors to the nodes.
 */
void GraphColoringRAImpl::assignColors() {
  while (!selectStack.empty()) {
    auto reg = selectStack.top();
    selectStack.pop();
    std::set<int> okColors;
    for (int i = 0; i < numRegs; i++) {
      okColors.insert(i);
    }
    for (auto adj : adjList[reg]) {
      if (coloredNodes.count(getAlias(adj)) ||
          precolored.count(getAlias(adj))) {
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
  selectedNodes.clear();

  for (auto reg : coalescedNodes) {
    color[reg] = color[getAlias(reg)];
  }
}

void GraphColoringRAImpl::rewriteProgram(LIRFunc &func) {
  std::vector<Register *> newTemp;
  LIRBuilder builder{*func.getParent()};
  std::unordered_map<Register *, StackSlot *> spilledSlot;

  for (auto *reg : spilledNodes) {
    spilledSlot[reg] = func.allocStackSlot(reg->bytes());
  }

  for (auto bb : func) {
    for (auto inst : incChange(bb->getInsts())) {
      for (auto &op : inst->operands) {
        auto value = op.getOperand();
        auto reg = value->as<Register>();
        if (!spilledNodes.count(reg)) {
          continue;
        }

        auto slot = spilledSlot[reg];
        auto tempReg = builder.newVReg(reg->getType());
        newTemp.push_back(tempReg);
        op.set(tempReg);
        if (op.isDef()) {
          builder.setInsertPoint(bb, inst->getNext());
          builder.storeValueTo(tempReg, slot, reg->getType());
        } else {
          builder.setInsertPoint(bb, inst);
          builder.loadValueFrom(tempReg, slot, reg->getType());
        }
      }
    }
  }

  spilledNodes.clear();
  initial.clear();
  initial.insert(coloredNodes.begin(), coloredNodes.end());
  initial.insert(coalescedNodes.begin(), coalescedNodes.end());
  initial.insert(newTemp.begin(), newTemp.end());
  coloredNodes.clear();
  coalescedNodes.clear();
}

void GraphColoringRAImpl::removeRedundantMoves(LIRFunc &func) {
  for (auto bb : func) {
    for (auto inst : incChange(*bb)) {
      if (!inst->isMoveInst(func)) {
        continue;
      }
      auto x = inst->getOp(0)->as<Register>();
      auto y = inst->getOp(1)->as<Register>();
      if (getAlias(x) == getAlias(y)) {
        inst->eraseFromList();
      }
    }
  }
}

void GraphColoringRAImpl::physicalize(LIRFunc &func) {
  std::set<Register *> allocatedRegs;

  for (auto *bb : func) {
    for (auto *inst : *bb) {
      for (auto &op : inst->operands) {
        auto value = op.getOperand();
        auto reg = value->as<Register>();

        if (!value->isReg() || !isSameClass(reg, classReg)) {
          continue;
        }
        if (value->isPReg()) {
          allocatedRegs.insert(reg);
          continue;
        }

        Register *physicalReg = color2PhyReg[color[reg]];
        allocatedRegs.insert(physicalReg);
        op.set(physicalReg);
      }
    }
  }

  std::set<Register *> toPreserve = {func.getParent()->getPhyReg(RA)};
  for (auto reg : allocatedRegs) {
    if (reg->isCalleeSaved() || toPreserve.count(reg)) {
      func.allocCalleeSavedSlot(reg);
    }
  }
}

void GraphColoringRAImpl::allocate(LIRFunc &func) {
  uint iteration = 0;
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
        // FIXME: handle the unstoppable spilling!!!
        selectSpill();
      }
    } while (!simplifyWorklist.empty() || !worklistMoves.empty() ||
             !freezeWorklist.empty() || !spillWorklist.empty());
    assignColors();

    iteration++;
    debug(std::cerr << "Complete iteration " << iteration << "th\n");

    if (spilledNodes.empty()) {
      break;
    }

    rewriteProgram(func);
  }

  removeRedundantMoves(func);
  physicalize(func);
}

void GraphColoringRA::allocate(LIRFunc &func) {
  auto gprs = unpreservedRegs(func.getParent());
  GraphColoringRAImpl(gprs, gprs[0]).allocate(func);

  auto fprs = unpreservedFRegs(func.getParent());
  GraphColoringRAImpl(fprs, fprs[0]).allocate(func);
}
