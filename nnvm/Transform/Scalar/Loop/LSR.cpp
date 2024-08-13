#include "LSR.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"
#include "LoopUtils.h"

using namespace nnvm;

bool LSRPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  scev = getAnalysis<SCEV>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    for (auto *block : loop->getBlocks())
      for (auto *I : *block)
        changed |= processInst(I, loop);

  return changed;
}

bool LSRPass::processInst(Instruction *I, Loop *loop) {
  if (!I->isa<MulInst>())
    return false;
  return true;
}
