#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include "Utils/Cast.h"
#include <algorithm>
#include <string>

namespace nnvm {

class Function;

class BasicBlock : public Value, public ListTrait<BasicBlock> {
public:
  BasicBlock(Function *func);
  BasicBlock(Function *func, const std::string &name) : BasicBlock(func) {
    setName(name);
  }

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

    BasicBlock *getBB() { return BB; }

  private:
    BasicBlock *BB;
  };

  Iterator begin() { return {instList.begin(), this}; }
  Iterator end() { return {instList.end(), this}; }

  TerminatorInst *getTerminator() {
    return dyn_cast<TerminatorInst>(instList.getLast());
  }

  uint getSuccNum() { return getTerminator()->getSuccNum(); }
  BasicBlock *getSucc(uint64_t index) {
    return getTerminator()->getSucc(index);
  }

  uint64_t getPredNum() {
    return std::count_if(userList.begin(), userList.end(), [](Use *U) {
      return dyn_cast<TerminatorInst>(U->getUser()) != nullptr;
    });
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
