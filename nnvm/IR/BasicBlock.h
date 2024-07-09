#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "ADT/Ranges.h"
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
  BasicBlock(Function *func, const std::string &name);

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

  TerminatorInst *getTerminator() const {
    if (instList.empty())
      return nullptr;
    return dyn_cast<TerminatorInst>(instList.getLast());
  }

  uint getSuccNum() const { return getTerminator()->getSuccNum(); }
  BasicBlock *getSucc(uint64_t index) {
    return getTerminator()->getSucc(index);
  }

  uint64_t getPredNum() {
    return std::count_if(userList.begin(), userList.end(), [](Use *U) {
      return dyn_cast<TerminatorInst>(U->getUser()) != nullptr;
    });
  }

  class PredIterator {
  public:
    PredIterator(BasicBlock *BB) {
      cur = BB->users().begin();
      end = BB->users().end();
      while (cur != end && !dyn_cast<TerminatorInst>((*cur)->getUser()))
        cur++;
    }

    PredIterator(List<Use>::Iterator end) { this->cur = this->end = end; }

    PredIterator &operator++(int) {
      cur++;
      while (cur != end && !dyn_cast<TerminatorInst>((*cur)->getUser()))
        cur++;
      return *this;
    }

    PredIterator operator++() {
      PredIterator ret = cur;
      cur++;
      while (cur != end && !dyn_cast<TerminatorInst>((*cur)->getUser()))
        cur++;
      return ret;
    }

    BasicBlock *operator*() {
      return cast<Instruction>((*cur)->getUser())->getParent();
    }

    bool operator==(PredIterator other) { return cur == other.cur; }
    bool operator!=(PredIterator other) { return cur != other.cur; }

  private:
    List<Use>::Iterator cur;
    List<Use>::Iterator end;
  };

  PredIterator getPredBegin() { return PredIterator(this); }
  PredIterator getPredEnd() { return PredIterator(users().end()); }

  void insert(Iterator insertPoint, Instruction *inserted);

  Function *getParent() { return parent; }
  void setParent(Function *parent) { this->parent = parent; }

  std::string dump();

  void eraseFromFunc() {
    for (Instruction *I : incChange(instList))
      I->eraseFromBB();
    ListTrait<BasicBlock>::eraseFromList();
  }

  bool containsPhi() { return dyn_cast<PhiInst>(*begin()); }
  bool isPredecessorOf(BasicBlock *other);

  const List<Instruction> &getInsts() const { return instList; }
  List<Instruction> &getInsts() { return instList; }

  ~BasicBlock();

private:
  Function *parent;
  List<Instruction> instList;
};
} // namespace nnvm
