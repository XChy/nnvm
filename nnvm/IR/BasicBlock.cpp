#include "BasicBlock.h"
#include <Utils/Debug.h>
#include <cassert>

using namespace nnvm;

BasicBlock::~BasicBlock() {
  for (auto *I : instList)
    delete I;
}

void BasicBlock::insert(Iterator insertPoint, Instruction *inserted) {
  assert(
      !inserted->getParent() &&
      "The inserted instruction has been inserted into another basic block.");

  inserted->setParent(this);
  (*insertPoint)->insertBack(inserted);
}

std::string BasicBlock::dump() {
  std::string ret;
  ret += (getName() + ":");
  for (Instruction *I : instList)
    ret += I->dump();
  return ret;
}
