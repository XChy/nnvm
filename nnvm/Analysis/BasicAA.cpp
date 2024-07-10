#include "BasicAA.h"
#include "Analysis/AAInfo.h"
#include "IR/Argument.h"
#include "IR/GlobalVariable.h"
#include "IR/Instruction.h"
using namespace nnvm;

AAFlag BasicAA::alias(Value *a, Value *b) {
  if (a == b)
    return MustAlias;

  return aliasRoot(getRootObj(a), getRootObj(b));
}

AAFlag BasicAA::aliasRoot(Value *a, Value *b) {
  if (a == b)
    return MustAlias;

  auto defOutsideFunc = [](Value *obj) -> bool {
    return obj->isa<GlobalVariable>() || obj->isa<Argument>();
  };

  // Global Variable excludes stacks
  if ((defOutsideFunc(a) && b->isa<StackInst>()) ||
      (defOutsideFunc(b) && a->isa<StackInst>()))
    return NotAlias;

  // Arguments excludes stacks
  if (a->isa<GlobalVariable>() && b->isa<GlobalVariable>())
    return NotAlias;

  if (a->isa<StackInst>() && b->isa<StackInst>())
    return NotAlias;

  return MayAlias;
}
