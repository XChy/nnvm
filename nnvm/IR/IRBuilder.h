#pragma once

#include "ADT/List.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include <vector>
namespace nnvm {
class IRBuilder {
public:
  IRBuilder() {}
  void setInsertPoint(BasicBlock::Iterator insertPoint) {
    this->insertPoint = insertPoint;
  }

  BasicBlock::Iterator getInsertPoint() const { return insertPoint; }

  Value *buildInst(InstType opcode, const std::vector<Value *> &operands);

private:
  BasicBlock::Iterator insertPoint;
};
} // namespace nnvm
