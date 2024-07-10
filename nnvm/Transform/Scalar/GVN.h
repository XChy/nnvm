/**
 * GVN: Global Value Numbering
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class GVNPass : public FunctionPass {
public:
  static constexpr const char *passName = "gvn";
  bool run(Function &F);

private:
  struct HashInstImpl {
    size_t operator()(Instruction *I) const;
  };

  struct EqInstImpl {
    bool operator()(Instruction *A, Instruction *B) const;
  };

  DomTreeAnalysis *domTree;
};
} /* namespace nnvm */
