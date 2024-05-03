#include "BasicBlock.h"

using namespace nnvm;

BasicBlock::~BasicBlock() {
  for (auto *I : instList)
    delete I;
}
