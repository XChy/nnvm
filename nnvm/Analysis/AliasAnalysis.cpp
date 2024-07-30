#include "AliasAnalysis.h"

using namespace nnvm;

bool AliasAnalysis::run(Function &F) { return true; }

AAFlag AliasAnalysis::alias(Value *a, Value *b) { return BAA.alias(a, b); }

AAFlag AliasAnalysis::alias(MemObj a, MemObj b) {
  if (a.getPointer() == b.getPointer()) {
    if (a.getOffset() > b.getOffset()) {
      std::swap(a, b);
    }

    if (b.getOffset() >= a.getOffset() + a.getSize())
      return NotAlias;
  }

  return alias(a.getPointer(), b.getPointer());
}

AAFlag AliasAnalysis::alias(Instruction *a, Instruction *b) {
  if (!getAccessedPtr(a) || !getAccessedPtr(b))
    return MayAlias;
  return alias(getAccessedObj(a), getAccessedObj(b));
}
