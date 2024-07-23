#include "SSAPeephole.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include <algorithm>

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
        changed |= processInst(I, builder);
      }

      changed |= clearInstIn(BB);
    }
  }
  return true;
}

bool SSAPeephole::clearInstIn(LIRBB *BB) {
  bool changed = false;
  for (auto *I : incChange(*BB)) {
    if (isBranch(I->getOpcode()) || isLoadOrStore(I) || I->getOpcode() == CALL)
      continue;

    if (std::all_of(I->operands.begin(), I->operands.end(), [](LowOperand &op) {
          return op.isUse() || (op.getOperand()->getUses().empty());
        })) {
      I->eraseFromList();
      changed = true;
    }
  }
  return changed;
}

bool SSAPeephole::processInst(LIRInst *I, LIRBuilder &builder) {
  LIRValue *A;
  LIRValue *B;
  LIRValue *C;
  LIRValue *D;

  // eliminate SSA copy
  if (match(I, pCopy(pSSAReg(A), pSSAReg(B)))) {
    A->replaceUseWith(B);
    return true;
  }

  // eliminate useless copy
  if (match(I, pDUUInst(pSSAReg(A), pOperand(), pOperand())) &&
      A->getUses().empty()) {
    I->eraseFromList();
    return true;
  }

  if (match(I, pSpecificDUUInst(XOR, pSSAReg(A), pSSAReg(B), pZeroReg()))) {
    A->replaceUseWith(B);
    return true;
  }

  // 0 u< A --> A != 0
  if (match(I, pSpecificUUUInst(BLTU, pZeroReg(), pSSAReg(A), pOperand(B)))) {
    builder.addInst(LIRInst::createAllUse(BNE, A, builder.phyReg(ZERO), B));
    I->eraseFromList();
    return true;
  }

  // c = a < b
  // if c != 0 then
  // -->
  // if a < b then
  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    SLT, pSSAReg(A), pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BLT, B, C, D));
    I->eraseFromList();
    return true;
  }

  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    SLTU, pSSAReg(A), pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BLTU, B, C, D));
    I->eraseFromList();
    return true;
  }

  // (B ^ C) != 0 --> B != C
  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    XOR, pSSAReg(A), pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BNE, B, C, D));
    I->eraseFromList();
    return true;
  }

  // ADDI a, b, imm1
  // sw v, imm2(a)
  // -->
  // sw v, (imm1 + imm2)(b)
  LIRImm *imm1;
  LIRImm *imm2;
  if (match(I, pLoadOrStore(pOperand(),
                            pSingleDef(pSpecificDUUInst(
                                ADDI, pSSAReg(A), pSSAReg(B), pImm(imm1))),
                            pImm(imm2)))) {
    auto newImmValue = imm1->getSignedValue() + imm2->getSignedValue();
    if (canExpressInBits<12>(newImmValue)) {
      I->setUse(1, B);
      I->setUse(2, LIRImm::create(newImmValue));
      return true;
    }
    return false;
  }

  return false;
}
