/**
 * Combiner: the pass combining expensive instructions into cheaper ones.
 * For example, simplify "a + b - a" to "b".
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class CFGCombinerPass : public FunctionPass {
public:
  static constexpr const char *passName = "cfg-combiner";
  bool run(Function &F);

private:
  bool processBB(BasicBlock *BB);
  bool foldBBWithUncondBr(BasicBlock *BB, BranchInst *BI);
  bool foldBBWithCondBr(BasicBlock *BB, BranchInst *BI);
  IRBuilder builder;
};
} /* namespace nnvm */
