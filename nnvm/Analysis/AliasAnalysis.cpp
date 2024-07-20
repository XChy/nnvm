#include "AliasAnalysis.h"

using namespace nnvm;

bool AliasAnalysis::run(Function &F) { return true; }

AAFlag AliasAnalysis::alias(Value *a, Value *b) { return BAA.alias(a, b); }

AAFlag AliasAnalysis::alias(Instruction *a, Instruction *b) {
  if (!getAccessedObj(a) || !getAccessedObj(b))
    return MayAlias;
  return alias(getAccessedObj(a), getAccessedObj(b));
}
