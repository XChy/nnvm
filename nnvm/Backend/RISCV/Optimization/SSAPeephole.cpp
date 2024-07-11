#include "SSAPeephole.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"

using namespace nnvm::riscv;
using namespace nnvm::riscv::pattern;

bool SSAPeephole::run(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  bool changed = true;
  while (changed) {
    changed = false;
    for (auto *BB : func) {
      for (auto *I : incChange(*BB)) {
        builder.setInsertPoint(BB, I);
        if (processInst(I, builder)) {
          I->eraseFromList();
          changed = true;
        }
      }
    }
  }
  return true;
}

bool SSAPeephole::processInst(LIRInst *I, LIRBuilder &builder) {
  LIRValue *A;
  LIRValue *B;
  LIRValue *C;
  LIRValue *D;

  // eliminate SSA copy
  if (match(I, pCopy(pSSAReg(A), pSSAReg(B)))) {
    A->replaceWith(B);
    return true;
  }

  // eliminate useless copy
  if (match(I, pDUUInst(pSSAReg(A), pOperand(), pOperand())) &&
      A->getUses().empty()) {
    return true;
  }

  if (match(I, pSpecificDUUInst(XOR, pSSAReg(A), pSSAReg(B), pZeroReg()))) {
    A->replaceWith(B);
    return true;
  }

  // 0 u< A --> A != 0
  if (match(I, pSpecificUUUInst(BLTU, pZeroReg(), pSSAReg(A), pOperand(B)))) {
    builder.addInst(LIRInst::createAllUse(BNE, A, builder.phyReg(ZERO), B));
    return true;
  }

  // c = a < b
  // if c != 0 then
  // -->
  // if a < b then
  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(SLT, pSSAReg(A),
                                                            pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BLT, B, C, D));
    return true;
  }

  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(SLTU, pSSAReg(A),
                                                            pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BLTU, B, C, D));
    return true;
  }

  // (B ^ C) != 0 --> B != C
  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(XOR, pSSAReg(A),
                                                            pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BNE, B, C, D));
    return true;
  }

  return false;
}
