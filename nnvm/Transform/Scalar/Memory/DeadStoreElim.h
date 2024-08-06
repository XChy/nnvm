/**
 * TailElim: Eliminate recursively tail call
 */

#pragma once

#include "Analysis/AliasAnalysis.h"
#include "Analysis/DomTreeAnalysis.h"
#include "Analysis/MemAccAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class DeadStoreElimPass : public FunctionPass {
public:
  static constexpr const char *passName = "deadstore-elim";
  bool run(Function &F);
  bool isDead(StoreInst *store);
  bool isLiveIn(StoreInst *store, BasicBlock *block);
  bool isOverwrittenIn(StoreInst *store, BasicBlock *block);

private:
  AliasAnalysis *AA;
  MemAccAnalysis *memAcc;
  DomTreeAnalysis *domTree;
};
} /* namespace nnvm */
