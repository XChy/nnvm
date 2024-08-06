#include "AliasAnalysis.h"
#include "Analysis/AAInfo.h"

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
  if (b->isa<CallInst>())
    std::swap(a, b);

  if (a->isa<CallInst>() && getAccessedPtr(b)) {
    Value *rootObj = getRootObj(getAccessedPtr(b));
    if (!rootObj->isa<StackInst>())
      return MayAlias;

    for (Value *arg : cast<CallInst>(a)->collectArgs()) {
      if (!arg->getType()->isPointer())
        continue;
      if (alias(rootObj, arg) != NotAlias)
        return MayAlias;
    }

    return NotAlias;
  }

  if (!getAccessedPtr(a) || !getAccessedPtr(b))
    return MayAlias;

  return alias(getAccessedObj(a), getAccessedObj(b));
}
