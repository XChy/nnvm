#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include <string>

namespace nnvm {

class Function;

class BasicBlock : public Value, public ListTrait<BasicBlock> {
public:
  BasicBlock() {}
  BasicBlock(const std::string &name) { setName(name); }

  typedef List<Instruction>::Iterator Iterator;
  void insert(Iterator insertPoint, Instruction *inserted);

  Function *getParent() { return parent; }
  void setParent(Function *parent) { this->parent = parent; }

  std::string dump();

  ~BasicBlock();

private:
  Function *parent;
  List<Instruction> instList;
};
} // namespace nnvm
