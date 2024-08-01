#pragma once

// =======================================================
// Implementation of graph coloring register allocation in
// Modern Compiler Implementation in Java (2nd edition).
// =======================================================

#include "Backend/RISCV/Analysis/LivenessAnalysis.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/RegisterAllocator.h"
#include <queue>
#include <set>
#include <stack>
#include <unordered_map>
#include <unordered_set>

namespace nnvm::riscv {

class GraphColoringRAImpl {
public:
  GraphColoringRAImpl(const std::vector<Register *> &freeRegs,
                      Register *classReg)
      : freeRegs(freeRegs), classReg(classReg) {}
  void allocate(LIRFunc &func);

private:
  // essential procedures
  void build(LIRFunc &func, LivenessAnalysis &la);
  void makeWorkList();
  void simplify();
  void coalesce();
  void freeze();
  void selectSpill();
  void assignColors();
  void rewriteProgram(LIRFunc &func);
  void removeRedundantMoves(LIRFunc &func);
  void physicalize(LIRFunc &func);

  // helper for building
  void addEdge(Register *u, Register *v);

  // helpers for work list making
  std::set<Register *> adjacent(Register *reg);
  std::set<LIRInst *> nodeMoves(Register *reg);
  bool moveRelated(Register *reg);

  // helpers for simplification
  void decrementDegree(Register *reg);
  void enableMove(Register *node);
  void enableMoves(const std::set<Register *> &nodes);

  // helpers for coalescing
  void addWorkList(Register *reg);
  bool ok(const std::set<Register *> &regs, Register *target);
  bool conservative(const std::set<Register *> &nodes);
  void combine(Register *u, Register *v);
  Register *getAlias(Register *reg);

  // helper for freezing
  void freezeMoves(Register *reg);

  std::set<Register *> precolored;
  std::set<Register *> initial;
  std::set<Register *> simplifyWorklist;
  std::set<Register *> freezeWorklist;
  std::set<Register *> spillWorklist;
  std::set<Register *> spilledNodes;
  std::set<Register *> coalescedNodes;
  std::set<Register *> coloredNodes;

  std::set<Register *> selected;
  std::stack<Register *> selectStack;

  std::set<LIRInst *> coalescedMoves;
  std::set<LIRInst *> constrainedMoves;
  std::set<LIRInst *> frozenMoves;
  std::set<LIRInst *> worklistMoves;
  std::set<LIRInst *> activeMoves;

  std::set<std::pair<Register *, Register *>> adjSet;
  std::unordered_map<Register *, std::set<Register *>> adjList;
  std::unordered_map<Register *, int> degree;
  std::unordered_map<Register *, std::set<LIRInst *>> moveList;
  std::unordered_map<Register *, Register *> alias;
  std::unordered_map<Register *, int> color;
  std::map<int, Register *> color2PhyReg;

  std::vector<Register *> freeRegs;
  Register *classReg;
};

class GraphColoringRA : public RegisterAllocator {
public:
  void allocate(LIRFunc &func) override;
};

} /* namespace nnvm::riscv */
