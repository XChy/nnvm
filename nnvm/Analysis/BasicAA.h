#pragma once

#include "Analysis/AAInfo.h"
#include "IR/Value.h"

namespace nnvm {

class BasicAA {
public:
  AAFlag alias(Value *a, Value *b);
};

} /* namespace nnvm */
