// =======================================================================
// DomTreeAnalysis: apply semi-NCA algorithm to calculate the dominance
// relation.
// =======================================================================

#pragma once

#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {

class PostDomTreeAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  // FIXME: use a fast and practical algorithm
  bool dom(BasicBlock *domer, BasicBlock *domee);
};
} /* namespace nnvm */
