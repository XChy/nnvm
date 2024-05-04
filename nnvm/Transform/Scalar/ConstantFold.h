#pragma once

#include "IR/Instruction.h"
#include "IR/Value.h"

namespace nnvm {
class ConstantFold {
public:
  static Value *fold(Instruction *I);
};
} // namespace nnvm
