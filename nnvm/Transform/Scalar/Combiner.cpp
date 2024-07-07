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

  if (ICmpInst *ICI = dyn_cast<ICmpInst>(I))
    return simplifyICmp(ICI);

  if (PhiInst *phi = dyn_cast<PhiInst>(I))
    return simplifyPhi(phi);

  return nullptr;
}

Value *CombinerPass::simplifyAdd(AddInst *I) {
  Value *A, *B, *C;

  // C1 + A --> A + C1
  if (match(I, pAdd(pConstant(A), pValue(B))))
    return builder.buildBinOp<AddInst>(B, A, I->getType());

  // A + 0 --> A
  if (match(I, pAdd(pValue(A), pZero())))
    return A;

  // (A + C1) + C2 --> A + (C1 + C2)
  if (match(I, pAdd(pAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, I->getType());
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<AddInst>(A, addc, I->getType());
  }
  return nullptr;
}

Value *CombinerPass::simplifySDiv(SDivInst *I) { return nullptr; }

Value *CombinerPass::simplifyICmp(ICmpInst *I) {
  Value *A, *B;
  // A != 0  -->  A
  if (I->getPredicate() == ICmpInst::NE &&
      match(I, pICmp(pValue(A), pZero())) && A->getType()->isIntegerNBits(1))
    return A;
  return nullptr;
}

Value *CombinerPass::simplifyPhi(PhiInst *I) {
  if (I->getIncomingNum() == 1)
    return I->getIncomingValue(0)->isInstruction() ? nullptr
                                                   : I->getIncomingValue(0);

  return nullptr;
}
