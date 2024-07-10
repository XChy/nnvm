#include "SLPairElim.h"
#include "ADT/Ranges.h"
#include "Analysis/AliasAnalysis.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <map>
#include <set>
#include <vector>

using namespace nnvm;

bool SLPairElimPass::run(Function &F) {
  AliasAnalysis *AA = getAnalysis<AliasAnalysis>(F);
  bool changed = false;

  for (BasicBlock *BB : F) {
    std::map<Value *, StoreInst *> ptr2Store;

    for (Instruction *I : incChange(*BB)) {
      if (auto *def = dyn_cast<StoreInst>(I)) {
        // TODO: alias analysis
        if (ptr2Store.count(def->getDest()))
          ptr2Store[def->getDest()] = def;
        ptr2Store.clear();
        ptr2Store[def->getDest()] = def;
        continue;
      }

      if (auto *load = dyn_cast<LoadInst>(I)) {
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

      // TODO: alias analysis
      if (I->mayWriteToMemory())
        ptr2Store.clear();
    }
  }

  return changed;
}
