#include "BasicAA.h"
#include "Analysis/AAInfo.h"
#include "IR/GlobalVariable.h"
#include "IR/Instruction.h"
using namespace nnvm;

AAFlag BasicAA::alias(Value *a, Value *b) {
  if (a == b)
    return MustAlias;
  return MayAlias;
}

AAFlag BasicAA::aliasRoot(Value *a, Value *b) {
  if (a == b)
    return MustAlias;

  if ((a->isa<GlobalVariable>() || a->isa<StackInst>()) &&
      (b->isa<GlobalVariable>() || b->isa<StackInst>()))
    return NotAlias;

  return MayAlias;
}
