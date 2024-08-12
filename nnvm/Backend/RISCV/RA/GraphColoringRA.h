#pragma once

// =======================================================
// Implementation of graph coloring register allocation in
// Modern Compiler Implementation in Java (2nd edition).
// =======================================================

#include "Backend/RISCV/Analysis/LivenessAnalysis.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/RegisterAllocator.h"
#include <queue>
#include <set>
#include <stack>
#include <unordered_map>
#include <unordered_set>

namespace nnvm::riscv {

struct PairHash {
  template <class T1, class T2>
  size_t operator()(std::pair<T1, T2> const &pair) const {
    size_t h1 = std::hash<T1>()(pair.first);
    size_t h2 = std::hash<T2>()(pair.second);
    return h1 ^ h2;
  }
};

class GraphColoringRAImpl {
public:
  GraphColoringRAImpl(const std::vector<Register *> &freeRegs,
                      Register *classReg);
  void allocate(LIRFunc &func);

private:
  // essential procedures
  void build(LIRFunc &func, LivenessAnalysis const &la);
  void makeWorkList();
  void simplify();
  void coalesce();
  void freeze();
  void selectSpill(LIRFunc &func);
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
  void enableMoves(std::set<Register *> const &nodes);

  // helpers for coalescing
  void addWorkList(Register *reg);
  bool conformGeorges(std::set<Register *> const &neighbors, Register *target);
  bool conformBriggs(std::set<Register *> const &neighbors);
  void combine(Register *dest, Register *src);
  Register *getAlias(Register *reg);

  // helper for freezing
  void freezeMoves(Register *reg);

  std::set<Register *> precolored;
  std::unordered_set<Register *> initial;
  RegSet simplifyWorklist;
  RegSet freezeWorklist;
  RegSet spillWorklist;
  RegSet spilledNodes;
  std::unordered_set<Register *> coalescedNodes;
  std::unordered_set<Register *> coloredNodes;

  std::stack<Register *> selectStack;
  std::unordered_set<Register *> selectedNodes;

  std::set<LIRInst *> coalescedMoves;
  std::set<LIRInst *> constrainedMoves;
  std::set<LIRInst *> frozenMoves;
  std::set<LIRInst *> worklistMoves;
  std::unordered_set<LIRInst *> activeMoves;

  std::unordered_set<std::pair<Register *, Register *>, PairHash> adjSet;
  std::unordered_map<Register *, std::set<Register *>> adjList;
  std::unordered_map<Register *, int> degree;
  std::unordered_map<Register *, std::set<LIRInst *>> moveList;
  std::unordered_map<Register *, Register *> alias;
  std::unordered_map<Register *, int> color;
  std::map<int, Register *> color2PhyReg;

  std::vector<Register *> freeRegs;
  Register *classReg;
  int numRegs;
};

class GraphColoringRA : public RegisterAllocator {
public:
  void allocate(LIRFunc &func) override;
};

} /* namespace nnvm::riscv */
