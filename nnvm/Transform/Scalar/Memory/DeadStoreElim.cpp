#include "DeadStoreElim.h"
#include "Analysis/AAInfo.h"
#include <deque>

using namespace nnvm;

bool DeadStoreElimPass::run(Function &F) {
  bool changed = false;
  AA = getAnalysis<AliasAnalysis>(F);
  memAcc = getAnalysis<MemAccAnalysis>(F);
  domTree = getAnalysis<DomTreeAnalysis>(F);

  for (auto *bb : F) {
    for (auto *I : incChange(*bb)) {
      if (auto *store = mayCast<StoreInst>(I)) {
        if (isDead(store)) {
          store->eraseFromBB();
          changed = true;
        }
      }
    }
  }

  return changed;
}

bool DeadStoreElimPass::isDead(StoreInst *store) {
  // TODO: remove it
  if (!getRootObj(store->getDest())->isa<StackInst>())
    return false;

  auto *storeBlock = store->getBlock();

  std::deque<BasicBlock *> worklist;
  std::unordered_set<BasicBlock *> visited;
  worklist.push_back(storeBlock);

  while (!worklist.empty()) {
    auto *block = worklist.back();
    worklist.pop_back();

    if (visited.count(block))
      continue;
    visited.insert(block);

    // Address in loop may change, the memory access might be invalid to judge!!
    if (store->getDest()->isInstruction()) {
      auto *destBlock = cast<Instruction>(store->getDest())->getBlock();
      if (!domTree->dom(destBlock, block))
        return false;
    }

    if (isOverwrittenIn(store, block))
      continue;

    if (isLiveIn(store, block))
      return false;

    if (!getRootObj(store->getDest())->isa<StackInst>() &&
        block->getTerminator()->isa<RetInst>())
      return false;

    for (int i = 0; i < block->getSuccNum(); i++)
      worklist.push_back(block->getSucc(i));
  }

  return true;
}

bool DeadStoreElimPass::isOverwrittenIn(StoreInst *store, BasicBlock *block) {
  BasicBlock::Iterator it;

  if (store->getBlock() == block) {
    it = BasicBlock::Iterator(store->getNext(), block);
  } else {
    it = block->begin();
  }

  for (; it != block->end(); it++) {
    auto *inst = *it;
    auto *SI = mayCast<StoreInst>(inst);
    if (SI && SI->getDest() == store->getDest())
      return true;

    // Clobbering
    if ((inst->mayReadMemory() || inst->mayWriteToMemory()) &&
        AA->alias(inst, store) != NotAlias)
      return false;
  }

  return false;
}

bool DeadStoreElimPass::isLiveIn(StoreInst *store, BasicBlock *block) {
  if (memAcc->hasReadClobberInBlock(store, block) ||
      memAcc->hasWriteClobberInBlock(store, block))
    return true;
  // Leak, TODO: escape analysis

  // for (auto *I : *block)
  // if (I->isa<CallInst>())
  // return true;

  return false;
}
