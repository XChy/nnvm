#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <Transform/Scalar/Mem2Reg.h>
#include <map>
#include <set>
#include <vector>

using namespace nnvm;

bool Mem2RegPass::run(Function &F) {
  bool changed = false;

  DomTreeAnalysis *DT = getAnalysis<DomTreeAnalysis>(F);

  std::vector<StackInst *> stackToRemove;
  for (Instruction *I : *F.getEntry()) {
    StackInst *SI = dyn_cast<StackInst>(I);
    // We assume that all the stack instructions are declared at the beginning
    // of the entry block.
    if (!SI)
      break;

    // Clear unused stack.
    if (SI->users().empty()) {
      stackToRemove.push_back(SI);
      continue;
    }

    bool promotable = true;
    std::set<BasicBlock *> localDefBBs;
    std::set<BasicBlock *> localUseBBs;

    for (Use *use : SI->users()) {
      Instruction *user = use->getUser();

      if (auto *def = dyn_cast<StoreInst>(user)) {
        if (def->getDest() == SI) {
          localDefBBs.insert(def->getParent());
          continue;
        }
      }

      if (auto *use = dyn_cast<LoadInst>(user)) {
        localUseBBs.insert(use->getParent());
        continue;
      }

      promotable = false;
      break;
    }

    if (promotable) {
      defBBs[SI] = localDefBBs;
      useBBs[SI] = localUseBBs;
    }
  }

  for (auto *SI : stackToRemove)
    SI->eraseFromBB();

  // for (auto &[SI, defInsts] : defs)
  // changed |= promote(SI);

  return changed;
}

static Value *getDefValue(Instruction *I) {
  if (auto *def = dyn_cast<StoreInst>(I)) {
    return def->getStoredValue();
  }
  nnvm_unreachable("Invalid instruction");
}

bool Mem2RegPass::promote(StackInst *SI) {
  std::vector<Instruction *> toRemove;
  for (Use *use : SI->users()) {
    Instruction *user = use->getUser();

    if (defs[SI].size() == 1) {
      if (auto *LI = dyn_cast<LoadInst>(user)) {
        LI->replaceSelf(getDefValue(defs[SI][0]));
        if (LI->users().empty())
          toRemove.push_back(LI);
      }
    }
  }

  for (auto *I : toRemove)
    I->eraseFromBB();

  for (Instruction *def : defs[SI])
    def->eraseFromList();

  SI->eraseFromList();
  return true;
}
