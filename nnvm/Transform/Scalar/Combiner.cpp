#include "Combiner.h"
#include "ADT/GenericInt.h"
#include "ADT/Ranges.h"
#include "CombinePatterns.h"
#include "Utils/Cast.h"
#include <algorithm>

using namespace nnvm;
using namespace nnvm::pattern;

bool CombinerPass::run(Function &F) {
  module = F.getModule();
  folder.setModule(module);

  // TODO: Use worklist algorithm.
  bool changed = true;
  while (changed) {
    changed = false;
    for (auto *BB : F) {
      for (auto *I : incChange(*BB)) {

        if ((I->moveable() || I->isa<PhiInst>()) && I->users().empty()) {
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

  if (AddInst *AI = mayCast<AddInst>(I))
    return simplifyAdd(AI);

  if (SubInst *SI = mayCast<SubInst>(I))
    return simplifySub(SI);

  if (auto *MI = mayCast<MulInst>(I))
    return simplifyMul(MI);

  if (SDivInst *SI = mayCast<SDivInst>(I))
    return simplifySDiv(SI);

  if (auto *PAI = mayCast<PtrAddInst>(I))
    return simplifyPtrAdd(PAI);

  if (ICmpInst *ICI = mayCast<ICmpInst>(I))
    return simplifyICmp(ICI);

  if (PhiInst *phi = mayCast<PhiInst>(I))
    return simplifyPhi(phi);

  return nullptr;
}

Value *CombinerPass::simplifyAdd(AddInst *I) {
  Value *A, *B, *C;
  Value *LHS = I->getLHS();
  Value *RHS = I->getRHS();
  Type *type = I->getType();

  // C1 + A --> A + C1
  if (match(I, pAdd(pConstant(A), pValue(B))))
    return builder.buildBinOp<AddInst>(B, A, type);

  // A + 0 --> A
  if (match(I, pAdd(pValue(A), pZero())))
    return A;

  // A + A --> A * 2
  if (LHS == RHS) {
    Constant *two = ConstantInt::create(*module, type, 2);
    return builder.buildBinOp<MulInst>(LHS, two, type);
  }

  // (A * C) + A --> A * (C + 1)
  if (match(LHS, pMul(pMustBe(RHS), pConstant(C)))) {
    Constant *one = ConstantInt::create(*module, type, 1);
    Value *addc = builder.buildBinOp<AddInst>(C, one, type);
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<MulInst>(RHS, addc, type);
  }

  // (A + C1) + C2 --> A + (C1 + C2)
  if (match(I, pAdd(pAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, type);
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<AddInst>(A, addc, type);
  }

  // (A - C1) + C2 --> A + (C2 - C1)
  if (match(I, pAdd(pSub(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *subc = builder.buildBinOp<SubInst>(C, B, type);
    subc = folder.fold(cast<Instruction>(subc));
    return builder.buildBinOp<AddInst>(A, subc, type);
  }

  return nullptr;
}

Value *CombinerPass::simplifySub(SubInst *I) {
  Value *A, *B, *C;

  // A - 0 --> A
  if (match(I, pSub(pValue(A), pZero())))
    return A;

  // (A - C1) - C2 --> A - (C1 + C2)
  if (match(I, pSub(pSub(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, I->getType());
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<SubInst>(A, addc, I->getType());
  }

  // (A + C1) - C2 --> A + (C1 - C2)
  if (match(I, pSub(pAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *subc = builder.buildBinOp<SubInst>(B, C, I->getType());
    subc = folder.fold(cast<Instruction>(subc));
    return builder.buildBinOp<AddInst>(A, subc, I->getType());
  }

  return nullptr;
}

Value *CombinerPass::simplifyMul(MulInst *I) {
  Value *A, *B, *C;
  Type *type = I->getType();
  ConstantInt *C1;
  // A * (powerof2 ** 2) --> A << powerof2
  GInt powerOfTwo;

  if (match(I, pMul(pValue(A), pConstantInt(C1))) &&
      genericGetPowerOfTwo(C1->getValue(), C1->getType()->getBits(),
                           powerOfTwo)) {
    return builder.buildBinOp<ShlInst>(
        A, builder.getConstantInt(type, powerOfTwo), type);
  }
  return nullptr;
}

Value *CombinerPass::simplifySDiv(SDivInst *I) {
  Value *A, *B, *C;
  Type *type = I->getType();
  ConstantInt *C1;
  GInt powerOfTwo;

  // TODO: fold sdiv
  // A / (1 << N) --> A s<< N  iff  A s> 0
  //if (match(I, pSDiv(pValue(A), pConstantInt(C1))) &&
      //C1->getSignedValue() > 0 &&
      //genericGetPowerOfTwo(C1->getValue(), C1->getType()->getBits(),
                           //powerOfTwo)) {
    //return builder.buildBinOp<AShrInst>(
        //A, builder.getConstantInt(type, powerOfTwo), type);
  //}

  return nullptr;
}

Value *CombinerPass::simplifyPtrAdd(PtrAddInst *I) {

  Value *A, *B, *C;
  // (A + C1) + C2 --> A + (C1 + C2)
  if (match(I, pPtrAdd(pPtrAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, B->getType());
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<PtrAddInst>(A, addc, I->getType());
  }

  // A + 0 --> A
  if (match(I, pPtrAdd(pValue(A), pZero())))
    return A;

  return nullptr;
}

Value *CombinerPass::simplifyICmp(ICmpInst *I) {
  Value *A, *B;
  // A != 0  -->  A
  if (I->getPredicate() == ICmpInst::NE &&
      match(I, pICmp(pValue(A), pZero())) && A->getType()->isIntegerNBits(1))
    return A;
  return nullptr;
}

Value *CombinerPass::simplifyPhi(PhiInst *I) {
  if (I->getIncomingNum() == 1 &&
      std::none_of(I->users().begin(), I->users().end(), [I](Use *U) {
        return I->getIncomingValue(0) == U->getUser();
      }))
    return I->getIncomingValue(0);

  return nullptr;
}
