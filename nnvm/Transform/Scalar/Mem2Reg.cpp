#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <Transform/Scalar/Mem2Reg.h>
#include <vector>

using namespace nnvm;

bool Mem2RegPass::run(Function &F) {
  bool changed = false;
  for (Instruction *I : *F.getEntry()) {
    StackInst *SI = dyn_cast<StackInst>(I);
    // We assume that all the stack instructions are declared at the beginning
    // of the entry block.
    if (!SI)
      break;

    defs[SI] = {};

    for (Use *use : SI->users()) {
      Instruction *user = use->getUser();

      if (auto *def = dyn_cast<StoreInst>(user)) {
        if (def->getDest() == SI) {
          defs[SI].push_back(def);
          continue;
        }
      }

      // TODO: discard unpromotable stack
    }
  }

  for (auto &[SI, defInsts] : defs)
    promote(SI);

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
  return false;
}
