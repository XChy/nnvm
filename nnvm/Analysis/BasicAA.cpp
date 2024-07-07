#include "BasicAA.h"
#include "Analysis/AAInfo.h"
using namespace nnvm;

AAFlag BasicAA::alias(Value *a, Value *b) {
  if (a == b)
    return MustAlias;
  return MayAlias;
}
