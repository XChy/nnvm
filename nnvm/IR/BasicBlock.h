#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Instruction.h"
#include "IR/Value.h"

namespace nnvm {
class BasicBlock : public Value, public ListTrait<BasicBlock> {
public:
  ~BasicBlock();

private:
  List<Instruction> instList;
};
} // namespace nnvm
