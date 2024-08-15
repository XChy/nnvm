#include "BlockUtils.h"
#include "ADT/Ranges.h"

using namespace nnvm;

void nnvm::moveInstBefore(Instruction *from, BasicBlock::Iterator to) {
  from->removeFromBB();
  to.insertBefore(from);
}

void nnvm::moveInstInBlock(BasicBlock *from, BasicBlock *to) {
  for (Instruction *I : incChange(*from))
    I->moveTo(to);
}

void nnvm::splitBlockAt(BasicBlock *tosplit, Instruction *pos,
                        BasicBlock *&newSplitted) {
  BasicBlock::Iterator iter(pos, tosplit);
  newSplitted =
      new BasicBlock(tosplit->getParent(), tosplit->getName() + ".split");
  tosplit->getParent()->insertBack(newSplitted, Function::Iterator(tosplit));
  auto range = makeRange(iter, tosplit->end());
  for (Instruction *I : incChange(range))
    I->moveTo(newSplitted);

  // Fix phis
  for (int i = 0; i < newSplitted->getSuccNum(); i++) {
    auto *succ = newSplitted->getSucc(i);
    for (Instruction *I : *succ) {
      PhiNode *phi = mayCast<PhiNode>(I);
      if (!phi)
        break;
      phi->replaceIncoming(tosplit, newSplitted);
    }
  }
}
