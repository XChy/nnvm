/**
 * SuperDCE: Super dead code elimination.
 */

#pragma once

#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class SuperDCEPass : public FunctionPass {
public:
  static constexpr const char *passName = "super-dce";
  bool run(Function &F);
  bool processBB(BasicBlock *BB);

  bool tryReplaceWithDef(Instruction *I);
  bool tryReplaceWithLoad(Instruction *I);

private:
};
} /* namespace nnvm */
