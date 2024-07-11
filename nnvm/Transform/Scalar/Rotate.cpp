#include "Rotate.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Attributes.h"
#include <stack>

using namespace nnvm;

bool RotatePass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= rotate(loop);
  return changed;
}

bool RotatePass::rotate(Loop *loop) {
  bool changed = false;
  auto *oldHeader = loop->getHeader();
  if (auto BI = dyn_cast<BranchInst>(oldHeader->getTerminator())) {
    if (!BI->isConditional())
      return false;
    // TODO: necessary single exit?
    if (loop->getExits().size() != 1)
      return false;
    auto [exiting, exited] = loop->getExits().front();
    if (exiting != oldHeader)
      return false;


  }
  return changed;
}
