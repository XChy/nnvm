#include "SLPairElim.h"
#include "ADT/Ranges.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include <map>

using namespace nnvm;

bool SLPairElimPass::run(Function &F) {
  bool changed = false;

  for (BasicBlock *BB : F) {
    std::map<Value *, StoreInst *> ptr2Store;

    for (Instruction *I : incChange(*BB)) {
      if (auto *def = mayCast<StoreInst>(I)) {
        // TODO: alias analysis
        if (ptr2Store.count(def->getDest()))
          ptr2Store[def->getDest()] = def;
        ptr2Store.clear();
        ptr2Store[def->getDest()] = def;
        continue;
      }

      if (auto *load = mayCast<LoadInst>(I)) {
        if (!ptr2Store.count(load->getSrc()))
          continue;
        Value *predefinedValue = ptr2Store[load->getSrc()]->getStoredValue();

        if (load->getType() != predefinedValue->getType())
          continue;

        load->replaceSelf(predefinedValue);
        load->eraseFromBB();
        changed = true;
        continue;
      }

      if (auto *call = mayCast<CallInst>(I)) {
      }

      // TODO: alias analysis
      if (I->mayWriteToMemory())
        ptr2Store.clear();
    }
  }

  return changed;
}
