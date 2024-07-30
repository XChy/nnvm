#include "TailElim.h"

using namespace nnvm;

static inline bool isCandidate(Function &F) { return false; }

bool TailElimPass::run(Function &F) { return true; }
