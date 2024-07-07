#include "BlockUtils.h"
#include "ADT/Ranges.h"

using namespace nnvm;

void nnvm::moveInstInBlock(BasicBlock *from, BasicBlock *to) {
  for (Instruction *I : incChange(*from)) {
    I->removeFromBB();
    to->end().insertBefore(I);
  }
}
