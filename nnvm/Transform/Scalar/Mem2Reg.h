#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {
struct StackInfo {
  Type *valueType = nullptr;
  std::set<BasicBlock *> defBBs;
  std::set<BasicBlock *> useBBs;
};
class Mem2RegPass : public FunctionPass {
public:
  static constexpr const char *passName = "mem2reg";
  bool run(Function &F);

private:
  using DFMap = std::unordered_map<BasicBlock *, std::vector<BasicBlock *>>;
  /**
   * Compute the dominance frontier of each BB.
   * @param F the function to be computed
   */
  DFMap computeDF(Function &F);

  bool promote(StackInst *SI);
  void insertPHIsFor(StackInst *SI);
  void rename(Function& F);

  std::unordered_map<StackInst *, StackInfo> candidates;
  std::unordered_map<PhiInst *, StackInst *> phi2Stack;
  DomTreeAnalysis *domTree;
  DFMap DFMapResult;
};
} /* namespace nnvm */
