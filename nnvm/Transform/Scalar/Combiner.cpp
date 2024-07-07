#include "Combiner.h"
#include "ADT/Ranges.h"
#include "CombinePatterns.h"
#include "Utils/Cast.h"

using namespace nnvm;
using namespace nnvm::pattern;

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

        builder.setInsertPoint(BasicBlock::Iterator(I, BB));
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

  if (AddInst *AI = dyn_cast<AddInst>(I))
    return simplifyAdd(AI);

  if (SDivInst *SI = dyn_cast<SDivInst>(I))
    return simplifySDiv(SI);

  //if (PhiInst *phi = dyn_cast<PhiInst>(I))
    //return simplifyPhi(phi);

  return nullptr;
}

Value *CombinerPass::simplifyAdd(AddInst *I) {
  Value *A, *B, *C;
  // (A + C1) + C2 --> A + (C1 + C2)
  if (match(I, pAdd(pAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, I->getType());
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<AddInst>(A, addc, I->getType());
  }
  return nullptr;
}

Value *CombinerPass::simplifySDiv(SDivInst *I) { return nullptr; }

Value *CombinerPass::simplifyPhi(PhiInst *I) {
  if (I->getIncomingNum() == 1)
    return I->getIncomingValue(0);

  return nullptr;
}
