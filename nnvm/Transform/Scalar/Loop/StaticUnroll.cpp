#include "StaticUnroll.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"

using namespace nnvm;

bool StaticUnrollPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= unroll(loop);
  return changed;
}

bool StaticUnrollPass::unroll(Loop *loop) {
  if (!loop->getChildren().empty())
    return false;

  if (loop->getExitEdges().size() != 1)
    return false;

  BasicBlock *latch = loop->getSingleLatch();
  BasicBlock *header = loop->getHeader();

  if (!latch)
    return false;
  return true;
}
