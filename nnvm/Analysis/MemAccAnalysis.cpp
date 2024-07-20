#include "MemAccAnalysis.h"
#include "ADT/Ranges.h"
#include "Analysis/AliasAnalysis.h"
#include <stack>

using namespace nnvm;

bool MemAccAnalysis::run(Function &F) {
  AA = getAnalysis<AliasAnalysis>(F);
  domTree = getAnalysis<DomTreeAnalysis>(F);
  return true;
}

AccessInfo MemAccAnalysis::getDomMemDef(Instruction *I) {
  AccessInfo ret = getLocalDomMemDef(I);
  if (ret.flag != MemNoop)
    return ret;

  BasicBlock *current = I->getBlock();

  // The defs in I->getBlock() must dominates I.
  current = domTree->getIDom(current);

  while (current) {
    ret = getMemDefInBlock(I, current);
    if (ret.flag != MemNoop)
      return ret;
    current = domTree->getIDom(current);
  }

  return ret;
}

AccessInfo MemAccAnalysis::getDomMemUse(Instruction *I) {
  return {nullptr, MemNoop};
}

AccessInfo MemAccAnalysis::getMemDefInBlock(Instruction *I, BasicBlock *block) {
  return getMemDefForBlockIter(I, block->begin(), block->end());
}

template <typename I> std::reverse_iterator<I> reverseIter(I i) {
  return std::reverse_iterator<I>{i};
}

AccessInfo MemAccAnalysis::getLocalDomMemDef(Instruction *I) {
  BasicBlock *block = I->getBlock();
  BasicBlock::Iterator end = BasicBlock::Iterator(I, block);
  return getMemDefForBlockIter(I, block->begin(), end);
}

AccessInfo MemAccAnalysis::getMemDefForBlockIter(Instruction *I,
                                                 BasicBlock::Iterator begin,
                                                 BasicBlock::Iterator end) {
  for (auto it = end; it != begin; it--) {
    auto prevIt = it;
    Instruction *cur = *(--prevIt);
    if (!cur->mayWriteToMemory())
      continue;

    auto AAResult = AA->alias(I, cur);
    if (AAResult == NotAlias)
      continue;

    if (AAResult == MayAlias)
      return {cur, MemClobber};

    if (getAccessedObj(I) == getAccessedObj(cur))
      return {cur, MemDef};
    else
      return {cur, MemClobber};
  }

  return {nullptr, MemNoop};
}

bool MemAccAnalysis::hasClobber(Instruction *I, BasicBlock *domer,
                                BasicBlock *domee) {
  std::unordered_set<BasicBlock *> visited;
  std::stack<BasicBlock *> worklist;
  worklist.push(domee);

  while (!worklist.empty()) {
    BasicBlock *curBlock = worklist.top();
    worklist.pop();

    if (curBlock == domer)
      continue;

    if (visited.count(curBlock))
      continue;
    visited.insert(curBlock);

    for (auto *pred : curBlock->getPredRange())
      worklist.push(pred);

    AccessInfo currentInfo;

    // For the local block, we only check those not dominated.
    if (curBlock == domee) {
      auto iter = BasicBlock::Iterator(I, domee);
      ++iter;
      currentInfo = getMemDefForBlockIter(I, iter, domee->end());
    } else {
      currentInfo = getMemDefInBlock(I, curBlock);
    }

    if (currentInfo.flag != MemNoop)
      return true;
  }

  return false;
}
