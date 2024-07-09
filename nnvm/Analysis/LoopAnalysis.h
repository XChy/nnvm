// =======================================================================
// LoopAnalysis: to analyze the loops in the function. Generate a loop tree.
// =======================================================================

#pragma once

#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {

struct Loop {
  Loop *parent;
  std::vector<Loop *> children;

  BasicBlock *header;
  std::set<BasicBlock *> blocks;
};

class LoopAnalysis : public FunctionPass {
public:
  bool run(Function &F);

private:
  std::vector<Loop *> loops;
};

} /* namespace nnvm */
