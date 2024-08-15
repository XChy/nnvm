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
    if (isBranch(I->getOpcode()) || isLoadOrStore(I) ||
        I->getOpcode() == CALL || I->getOpcode() == UNIMP)
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

  // c = a < b
  // if c == 0 then
  // -->
  // if a >= b then
  if (match(I, pSpecificUUUInst(BEQ,
                                pSingleDef(pSpecificDUUInst(
                                    SLT, pSSAReg(A), pSSAReg(B), pSSAReg(C))),
                                pZeroReg(), pOperand(D)))) {
    builder.addInst(LIRInst::createAllUse(BGE, B, C, D));
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
                                ADDI, pSSAReg(A), pOperand(B), pImm(imm1))),
                            pImm(imm2))) &&
      (match(B, pSSAReg()) || B->isStackSlot())) {
    auto newImmValue = imm1->getSignedValue() + imm2->getSignedValue();
    if (canExpressInBits<12>(newImmValue)) {
      I->setUse(1, B);
      I->setUse(2, LIRImm::create(newImmValue));
      return true;
    }
    return false;
  }

  // add A, B, (shl C, D, 1) --> SH1ADD A, D, B
  if (match(I, pSpecificDUUInst(
                   ADD, pSSAReg(A), pSSAReg(B),
                   pSingleDef(pSpecificDUUInst(SLLIW, pSSAReg(C), pSSAReg(D),
                                               pImm(imm1)))))) {
    uint64_t opcode;
    switch (imm1->getValue()) {
    case 1:
      opcode = SH1ADD;
      break;
    case 2:
      opcode = SH2ADD;
      break;
    case 3:
      opcode = SH3ADD;
      break;
    default:
      return false;
    }
    builder.addInst(LIRInst::create(opcode, A, D, B));
    I->eraseFromList();
    return true;
  }

  // sltiu A, B, 1
  // bne A, zero, C
  // -->
  // beq B, zero, C
  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    SLTIU, pSSAReg(A), pSSAReg(B), pImm(imm1))),
                                pZeroReg(), pOperand(C))) &&
      imm1->getValue() == 1) {
    builder.addInst(LIRInst::createAllUse(BEQ, B, builder.phyReg(ZERO), C));
    I->eraseFromList();
    return true;
  }

  // sltiu A, B, 1
  // beq A, zero, C
  // -->
  // bne B, zero, C

  if (match(I, pSpecificUUUInst(BEQ,
                                pSingleDef(pSpecificDUUInst(
                                    SLTIU, pSSAReg(A), pSSAReg(B), pImm(imm1))),
                                pZeroReg(), pOperand(C))) &&
      imm1->getValue() == 1) {
    builder.addInst(LIRInst::createAllUse(BNE, B, builder.phyReg(ZERO), C));
    I->eraseFromList();
    return true;
  }

  // xor A, B, D
  // bne A, zero, C
  // -->
  // bne B, D, C

  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    XOR, pSSAReg(A), pSSAReg(B), pSSAReg(D))),
                                pZeroReg(), pOperand(C)))) {
    builder.addInst(LIRInst::createAllUse(BNE, B, D, C));
    I->eraseFromList();
    return true;
  }

  // xor A, B, D
  // beq A, zero, C
  // -->
  // beq B, D, C

  if (match(I, pSpecificUUUInst(BEQ,
                                pSingleDef(pSpecificDUUInst(
                                    XOR, pSSAReg(A), pSSAReg(B), pSSAReg(D))),
                                pZeroReg(), pOperand(C)))) {
    builder.addInst(LIRInst::createAllUse(BEQ, B, D, C));
    I->eraseFromList();
    return true;
  }

  // xori A, B, 1
  // bne A, zero, C
  // -->
  // beq B, zero, C

  if (match(I, pSpecificUUUInst(BNE,
                                pSingleDef(pSpecificDUUInst(
                                    XORI, pSSAReg(A), pSSAReg(B), pImm(imm1))),
                                pZeroReg(), pOperand(C))) &&
      imm1->getValue() == 1 && B->getType() == LIRValueType::i1) {
    builder.addInst(LIRInst::createAllUse(BEQ, B, builder.phyReg(ZERO), C));
    I->eraseFromList();
    return true;
  }

  // xori A, B, 1
  // beq A, zero, C
  // -->
  // bne B, zero, C

  if (match(I, pSpecificUUUInst(BEQ,
                                pSingleDef(pSpecificDUUInst(
                                    XORI, pSSAReg(A), pSSAReg(B), pImm(imm1))),
                                pZeroReg(), pOperand(C))) &&
      imm1->getValue() == 1 && B->getType() == LIRValueType::i1) {
    builder.addInst(LIRInst::createAllUse(BNE, B, builder.phyReg(ZERO), C));
    I->eraseFromList();
    return true;
  }

  return false;
}
