#pragma once

#include "ADT/List.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include <vector>
namespace nnvm {
class IRBuilder {
public:
  void setInsertPoint(ListIterator<Instruction>);
  Value *buildInst(InstType opcode, const std::vector<Value *>& operands);

private:
  ListIterator<Instruction> insertPoint;
};
} // namespace nnvm
