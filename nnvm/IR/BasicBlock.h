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

  class Iterator : public List<Instruction>::Iterator {
  public:
    Iterator() {}
    Iterator(List<Instruction>::Iterator instIt, BasicBlock *BB)
        : List<Instruction>::Iterator(instIt), BB(BB) {}
    void insertBefore(Instruction *a) {
      a->setParent(BB);
      ((List<Instruction>::Iterator *)this)->insertBefore(a);
    }
    void insertBack(Instruction *a) {
      a->setParent(BB);
      ((List<Instruction>::Iterator *)this)->insertBefore(a);
    }

  private:
    BasicBlock *BB;
  };

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
