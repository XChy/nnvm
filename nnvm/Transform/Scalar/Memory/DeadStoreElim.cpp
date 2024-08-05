#include "DeadStoreElim.h"

using namespace nnvm;

bool DeadStoreElimPass::run(Function &F) {
  bool changed = false;

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
  auto *storeBlock = store->getBlock();
  return false;
}

bool DeadStoreElimPass::isDeadIn(BasicBlock *block) { return false; }
