#pragma once

#include "ADT/List.h"
#include "IR/BasicBlock.h"
#include "IR/Value.h"

namespace nnvm {
class Function : Value {
public:
  ~Function();

private:
  List<BasicBlock> BBList;
};
} // namespace nnvm
