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

        if ((I->moveable() || I->isa<PhiNode>()) && I->users().empty()) {
          I->eraseFromBB();
          changed = true;
          continue;
        }

        builder.insertAt(BasicBlock::Iterator(I, BB));
        if (Value *replaced = simplifyInst(I)) {
          if (replaced != I) {
            I->replaceSelf(replaced);
            I->eraseFromBB();

            changed = true;
            continue;
          }
        }
      }
    }
  }

  return true;
}
Value *CombinerPass::simplifyInst(Instruction *I) {
  if (Value *ret = folder.fold(I))
    return ret;

  if (I->commutative() && I->getOperand(0)->isConstant()) {
    I->swapOperand(0, 1);
    return I;
  }

  if (AddInst *AI = mayCast<AddInst>(I))
    return simplifyAdd(AI);

  if (SubInst *SI = mayCast<SubInst>(I))
    return simplifySub(SI);

  if (auto *MI = mayCast<MulInst>(I))
    return simplifyMul(MI);

  if (SDivInst *SI = mayCast<SDivInst>(I))
    return simplifySDiv(SI);

  if (auto *SI = mayCast<SRemInst>(I))
    return simplifySRem(SI);

  if (auto *ZI = mayCast<ZExtInst>(I))
    return simplifyZExt(ZI);

  if (AndInst *AI = mayCast<AndInst>(I))
    return simplifyAnd(AI);

  if (OrInst *OI = mayCast<OrInst>(I))
    return simplifyOr(OI);

  if (XorInst *XI = mayCast<XorInst>(I))
    return simplifyXor(XI);

  if (auto *PAI = mayCast<PtrAddInst>(I))
    return simplifyPtrAdd(PAI);

  if (ICmpInst *ICI = mayCast<ICmpInst>(I))
    return simplifyICmp(ICI);

  if (PhiNode *phi = mayCast<PhiNode>(I))
    return simplifyPhi(phi);

  if (WhichOfInst *which = mayCast<WhichOfInst>(I))
    return simplifyWhichOf(which);

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
  Type *type = I->getType();
  ConstantInt *zero = cast<ConstantInt>(builder.getZero(type));

  // A - 0 --> A
  if (match(I, pSub(pValue(A), pZero())))
    return A;

  // A - C1 --> A + (-C1)
  ConstantInt *C1;
  if (match(I, pSub(pValue(A), pConstantInt(C1))))
    return builder.buildBinOp<AddInst>(A, zero->sub(C1), type);

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

  // C1 * A -->  A * C1
  if (match(I, pMul(pConstantInt(C1), pValue(A))))
    return builder.buildBinOp<MulInst>(A, C1, type);

  return nullptr;
}

Value *CombinerPass::simplifySDiv(SDivInst *I) { return nullptr; }

Value *CombinerPass::simplifySRem(SRemInst *I) { return nullptr; }

Value *CombinerPass::simplifyZExt(ZExtInst *I) {
  if (I->getToType() == I->getFromType())
    return I->getOperand(0);
  return nullptr;
}

Value *CombinerPass::simplifyAnd(AndInst *I) {
  Value *A, *B, *C;
  Type *type = I->getType();

  // (A & C1) & C2 --> A & (C1 & C2)
  if (match(I, pAnd(pAnd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AndInst>(B, C, type);
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<AndInst>(A, addc, type);
  }

  // A & 0 = 0
  if (match(I, pAnd(pValue(A), pAllOne())))
    return A;

  // A & -1 = A
  if (match(I, pAnd(pValue(A), pAllOne())))
    return A;
  return nullptr;
}

Value *CombinerPass::simplifyOr(OrInst *I) {
  Value *A, *B, *C;
  Type *type = I->getType();
  // (A | C1) | C2 --> A | (C1 | C2)
  if (match(I, pOr(pOr(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<OrInst>(B, C, type);
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<OrInst>(A, addc, type);
  }
  return nullptr;
}

Value *CombinerPass::simplifyXor(XorInst *I) {
  Value *A, *B, *C;
  Type *type = I->getType();
  // (A ^ C1) ^ C2 --> A ^ (C1 ^ C2)
  if (match(I, pXor(pXor(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<XorInst>(B, C, type);
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<XorInst>(A, addc, type);
  }
  return nullptr;
}

Value *CombinerPass::simplifyPtrAdd(PtrAddInst *I) {

  Value *A, *B, *C, *C1;
  // (A + C1) + C2 --> A + (C1 + C2)
  if (match(I, pPtrAdd(pPtrAdd(pValue(A), pConstant(B)), pConstant(C)))) {
    Value *addc = builder.buildBinOp<AddInst>(B, C, B->getType());
    addc = folder.fold(cast<Instruction>(addc));
    return builder.buildBinOp<PtrAddInst>(A, addc, I->getType());
  }

  // (A + C1) + B --> (A + B) + C1
  if (match(I, pPtrAdd(pPtrAdd(pValue(A), pConstant(C1)), pValue(B)))) {
    Value *add = builder.buildBinOp<PtrAddInst>(A, B, A->getType());
    return builder.buildBinOp<PtrAddInst>(add, C1, A->getType());
  }

  // A + 0 --> A
  if (match(I, pPtrAdd(pValue(A), pZero())))
    return A;

  return nullptr;
}

Value *CombinerPass::simplifyICmp(ICmpInst *I) {
  Value *A, *B;
  ICmpInst::Predicate pred = I->getPredicate();

  // A != 0  -->  A
  if (pred == ICmpInst::NE && match(I, pICmp(pValue(A), pZero())) &&
      A->getType()->isIntegerNBits(1))
    return A;

  // A != 1  -->  A ^ 1
  if (pred == ICmpInst::NE && match(I, pICmp(pValue(A), pOne())) &&
      A->getType()->isIntegerNBits(1))
    return builder.buildBinOp<XorInst>(
        A, builder.getConstantInt(A->getType(), 1), A->getType());

  // zext(A) !=/== 0  -->  A !=/== 0
  if ((pred == ICmpInst::NE || pred == ICmpInst::EQ) &&
      match(I, pICmp(pZExt(pValue(A)), pZero())) &&
      A->getType()->isIntegerNBits(1))
    return builder.buildICmp(pred, A, builder.getConstantInt(A->getType(), 0));

  // zext(A) !=/== 1  -->  A !=/== 1
  if ((pred == ICmpInst::NE || pred == ICmpInst::EQ) &&
      match(I, pICmp(pZExt(pValue(A)), pOne())) &&
      A->getType()->isIntegerNBits(1))
    return builder.buildICmp(pred, A, builder.getConstantInt(A->getType(), 1));

  // A % 2 != 0 --> A & 1 != 0
  // A % 2 == 0 --> A & 1 == 0
  ConstantInt *C1;
  ConstantInt *zero;
  if ((pred == ICmpInst::EQ || pred == ICmpInst::NE) &&
      match(I, pICmp(pSRem(pValue(A), pConstantInt(C1)), pZero(zero))) &&
      C1->getSignedValue() == 2) {
    Value *one = builder.getOne(C1->getType());
    auto *andInst = builder.buildBinOp<AndInst>(A, one, A->getType());
    return builder.buildICmp(pred, andInst, zero);
  }

  return nullptr;
}

static inline bool isIdenticalPhi(PhiNode *phi) {
  Value *identical = nullptr;

  for (int i = 0; i < phi->getIncomingNum(); i++) {
    if (!identical) {
      identical = phi->getIncomingValue(i);
      continue;
    }

    if (identical != phi->getIncomingValue(i))
      return false;
  }

  return true;
}

static inline bool notCyclicReference(PhiNode *I) {
  return std::none_of(I->users().begin(), I->users().end(), [I](Use *U) {
    return I->getIncomingValue(0) == U->getUser();
  });
}

Value *CombinerPass::simplifyPhi(PhiNode *I) {
  // phi [a]  --> a
  if (I->getIncomingNum() == 1 && notCyclicReference(I))
    return I->getIncomingValue(0);

  // phi [a, a, a]  --> a
  if (isIdenticalPhi(I) && notCyclicReference(I)) {
    auto *identical = I->getIncomingValue(0);
    if (identical == I)
      return nullptr;
    while (I->getIncomingNum() != 0)
      I->removeIncoming(I->getIncomingBB(0));
    return identical;
  }

  return nullptr;
}

Value *CombinerPass::simplifyWhichOf(WhichOfInst *I) {

  Value *cond, *A, *B;
  if (match(I, pWhichOf(pValue(cond), pOne(), pZero()))) {
    return builder.buildZExt(cond, I->getType());
  }

  if (I->getType()->isIntegerNBits(1)) {
    // cond ? A : false --> cond & A
    if (match(I, pWhichOf(pValue(cond), pValue(A), pZero())))
      return builder.buildBinOp<AndInst>(cond, A, I->getType());

    // cond ? true : B --> cond | B
    if (match(I, pWhichOf(pValue(cond), pOne(), pValue(B))))
      return builder.buildBinOp<OrInst>(cond, B, I->getType());
  }

  if (I->getType()->isInteger()) {

    if (match(I->getCond(),
              pICmp(pMustBe(I->getTrueVal()), pMustBe(I->getFalseVal())))) {
      auto pred = cast<ICmpInst>(I->getCond())->getPredicate();
      // A < B ? A : B  --> smin A, B
      if (pred == ICmpInst::SLT || pred == ICmpInst::SLE)
        return builder.buildBinOp<SMinInst>(I->getTrueVal(), I->getFalseVal(),
                                            I->getType());
      // A > B ? A : B  --> smax A, B
      if (pred == ICmpInst::SGT || pred == ICmpInst::SGE)
        return builder.buildBinOp<SMaxInst>(I->getTrueVal(), I->getFalseVal(),
                                            I->getType());
    }
  }
  return nullptr;
}
