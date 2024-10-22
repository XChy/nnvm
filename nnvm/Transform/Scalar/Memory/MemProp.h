/**
 * MemProp: propagate memory definition
 */

#pragma once

#include "Analysis/MemAccAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class MemPropPass : public FunctionPass {
public:
  static constexpr const char *passName = "memprop";
  bool run(Function &F);
  bool processBB(BasicBlock *BB);

  bool tryReplaceWithDef(Instruction *I);
  bool tryReplaceWithLoad(Instruction *I);

private:
  MemAccAnalysis *memAcc;
};
} /* namespace nnvm */
