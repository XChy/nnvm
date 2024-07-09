#include "LICM.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include <stack>

using namespace nnvm;

bool LICMPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  return true;
}
