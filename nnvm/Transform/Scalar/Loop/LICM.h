/**
 * LICM: Loop Invariant Code Motion
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "Analysis/LoopAnalysis.h"
#include "Analysis/MemAccAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LICMPass : public FunctionPass {
public:
  static constexpr const char *passName = "licm";
  bool run(Function &F);

  bool isInvariant(Instruction *I, Loop *L);
  bool isTriviallyInvariant(Instruction *I, Loop *L);
  bool isInvariantStore(StoreInst *I, Loop *L);
  bool isInvariantLoad(LoadInst *I, Loop *L);
  bool isOperandsInvariant(Instruction *I, Loop *L);

private:
  LoopAnalysis *LA;
  MemAccAnalysis *memAcc;
  DomTreeAnalysis *domTree;
};
} /* namespace nnvm */
