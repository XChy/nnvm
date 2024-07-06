#include "Combiner.h"
#include "ADT/Ranges.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool CombinerPass::run(Function &F) {
  folder.setModule(F.getModule());

  // TODO: Use worklist algorithm.
  bool changed = true;
  while (changed) {
    changed = false;
    for (auto *BB : F) {
      for (auto *I : incChange(*BB)) {

        if (!I->mayWriteToMemory() && !dyn_cast<TerminatorInst>(I) &&
            I->users().empty()) {
          I->eraseFromBB();
          changed = true;
          continue;
        }

        if (Value *replaced = simplifyInst(I)) {
          for (Use *U : I->users())
            worklist.push(U->getUser());

          I->replaceSelf(replaced);
          I->eraseFromBB();

          changed = true;
          continue;
        }
      }
    }
  }

  return true;
}

Value *CombinerPass::simplifyInst(Instruction *I) {
  if (Value *ret = folder.fold(I))
    return ret;

  return nullptr;
}
