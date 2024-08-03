#include "BasicBlock.h"
#include "IR/Function.h"
#include "IR/Module.h"
#include "Utils/Collection.h"
#include <Utils/Debug.h>
#include <cassert>

using namespace nnvm;

BasicBlock::BasicBlock(Function *func)
    : Value(ValueID::BasicBlock, func->getModule()->getBBType()),
      parent(nullptr) {
  func->insert(this);
}
BasicBlock::BasicBlock(Function *func, const std::string &name)
    : BasicBlock(func) {
  setName(name, *func->getModule());
}

BasicBlock::~BasicBlock() { instList.freeAll(); }

void BasicBlock::insert(Iterator insertPoint, Instruction *inserted) {
  assert(
      !inserted->getParent() &&
      "The inserted instruction has been inserted into another basic block.");

  insertPoint.insertBack(inserted);
}

bool BasicBlock::isPredecessorOf(BasicBlock *other) {
  for (int i = 0; i < getSuccNum(); i++)
    if (getSucc(i) == other)
      return true;
  return false;
}

std::string BasicBlock::dump() {
  std::string ret;
  std::vector<std::string> preds;

  for (auto *pred : getPredRange()) {
    preds.push_back(pred->getName());
  }

  ret += (getName() + ":  pred(" + join(preds.begin(), preds.end(), ", ") +
          ")" + "\n");
  for (Instruction *I : instList)
    ret += "  " + I->dump();
  return ret;
}
