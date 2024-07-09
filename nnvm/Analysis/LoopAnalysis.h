// =======================================================================
// LoopAnalysis: to analyze the loops in the function. Generate a loop tree.
// =======================================================================

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {

struct Loop {
public:
  bool contains(BasicBlock *BB) const { return blocks.count(BB); }
  Loop *parent;
  std::vector<Loop *> children;

  BasicBlock *header;
  std::set<BasicBlock *> blocks;
};

class LoopAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  std::vector<Loop *> getLoops() const { return loops; }

  void print(std::ostream &out);
  ~LoopAnalysis();

private:
  Loop *tryToFindLoop(BasicBlock *header);
  DomTreeAnalysis *domTree;
  std::vector<Loop *> loops;
  std::unordered_map<BasicBlock *, Loop *> headerToLoop;
};

} /* namespace nnvm */
