#pragma once

#include "Analysis/AAInfo.h"
#include "IR/Value.h"

namespace nnvm {

// Assume in context of function.
class BasicAA {
public:
  AAFlag alias(const MemObj &obj1, const MemObj &obj2);
  
  AAFlag alias(Value *a, Value *b);
private:
  AAFlag aliasRoot(Value *a, Value *b);
};

} /* namespace nnvm */
