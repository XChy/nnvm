#include "BasicBlock.h"
#include "IR/Function.h"
#include "IR/Module.h"
#include <Utils/Debug.h>
#include <cassert>

using namespace nnvm;

BasicBlock::BasicBlock(Function *func)
    : Value(ValueID::BasicBlock, func->getModule()->getBBType()),
      parent(nullptr) {
  func->insert(this);
}

BasicBlock::~BasicBlock() { instList.freeAll(); }

void BasicBlock::insert(Iterator insertPoint, Instruction *inserted) {
  assert(
      !inserted->getParent() &&
      "The inserted instruction has been inserted into another basic block.");

  insertPoint.insertBack(inserted);
}

std::string BasicBlock::dump() {
  std::string ret;
  ret += (getName() + ":\n");
  for (Instruction *I : instList)
    ret += "  " + I->dump();
  return ret;
}
