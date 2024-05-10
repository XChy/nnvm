#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include "Utils/Cast.h"
#include <string>

namespace nnvm {

class Function;

class BasicBlock : public Value, public ListTrait<BasicBlock> {
public:
  BasicBlock() : Value(ValueID::BasicBlock) {}
  BasicBlock(const std::string &name) : BasicBlock() { setName(name); }

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
      ((List<Instruction>::Iterator *)this)->insertBack(a);
    }

  private:
    BasicBlock *BB;
  };

  Iterator begin() { return {instList.begin(), this}; }
  Iterator end() { return {instList.end(), this}; }

  TerminatorInst *getTerminator() {
    return cast<TerminatorInst>(instList.getLast());
  }

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
