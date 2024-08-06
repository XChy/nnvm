#include "LinearizePtrAdd.h"
#include "CombinePatterns.h"

using namespace nnvm;
using namespace nnvm::pattern;

bool LinearizePtrAddPass::run(Function &F) {
  module = F.getModule();
  // TODO: Use worklist algorithm.
  bool changed = true;
  while (changed) {
    changed = false;
    for (auto *BB : F) {
      for (auto *I : incChange(*BB)) {

        builder.insertAt(BasicBlock::Iterator(I, BB));

        if (auto *shl = mayCast<ShlInst>(I)) {
          if (Value *replaced = expandShlToMul(shl)) {
            I->replaceSelf(replaced);
            I->eraseFromBB();
            changed = true;
            continue;
          }
        }

        if (auto *ptradd = mayCast<PtrAddInst>(I)) {
          if (Value *replaced = linearize(ptradd)) {
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

Value *LinearizePtrAddPass::expandShlToMul(ShlInst *shl) {
  ConstantInt *shlNum;
  if (match(shl->getRHS(), pConstantInt(shlNum)))
    return builder.buildBinOp<MulInst>(
        shl->getLHS(),
        ConstantInt::create(*module, shl->getType(), 1)->shl(shlNum),
        shl->getType());
  return nullptr;
}

Value *LinearizePtrAddPass::linearize(PtrAddInst *ptradd) {
  Value *A, *B, *C;

  // FIXME: positive ensurance?
  // A + C1 * (B + CC1) + C * C2 -->
  // A + (B * C1) + (C * C2) + (C1 * CC1)
  ConstantInt *C1, *CC1, *C2, *CC2;
  if (match(ptradd,
            pPtrAdd(pPtrAdd(pValue(A), pMul(pAdd(pValue(B), pConstantInt(CC1)),
                                            pConstantInt(C1))),
                    pMul(pValue(C), pConstantInt(C2))))) {
    auto *mul1 = builder.buildBinOp<MulInst>(C1, B, B->getType());
    auto *add1 = builder.buildBinOp<PtrAddInst>(A, mul1, A->getType());
    auto *mul2 = builder.buildBinOp<MulInst>(C2, C, C->getType());
    auto *add2 = builder.buildBinOp<PtrAddInst>(add1, mul2, A->getType());

    auto *constMul = builder.buildBinOp<MulInst>(C1, CC1, C1->getType());
    auto *add3 = builder.buildBinOp<PtrAddInst>(add2, constMul, A->getType());
    return add3;
  }

  // FIXME: positive ensurance?
  // A + C1 * (B + CC1) + C2 * (C + CC2) -->
  // A + (C1 * B) + (C2 * C) + (C1 * CC1 + C2 * CC2)
  if (match(ptradd,
            pPtrAdd(
                pPtrAdd(pValue(A), pMul(pAdd(pValue(B), pConstantInt(CC1)),
                                        pConstantInt(C1))),
                pMul(pAdd(pValue(C), pConstantInt(CC2)), pConstantInt(C2))))) {
    auto *mul1 = builder.buildBinOp<MulInst>(C1, B, B->getType());
    auto *add1 = builder.buildBinOp<PtrAddInst>(A, mul1, A->getType());

    auto *mul2 = builder.buildBinOp<MulInst>(C2, C, C->getType());
    auto *add2 = builder.buildBinOp<PtrAddInst>(add1, mul2, A->getType());

    auto *constMul = builder.buildBinOp<AddInst>(
        builder.buildBinOp<MulInst>(C1, CC1, C1->getType()),
        builder.buildBinOp<MulInst>(C2, CC2, C2->getType()), C1->getType());
    auto *add3 = builder.buildBinOp<PtrAddInst>(add2, constMul, A->getType());
    return add3;
  }

  return nullptr;
}
