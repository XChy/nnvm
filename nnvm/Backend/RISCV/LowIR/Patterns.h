#pragma once

#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <ADT/PatternMatch.h>

namespace nnvm::riscv::pattern {

class pOperand {
public:
  pOperand(LIRValue *&receiver) : receiver(&receiver) {}
  pOperand() : receiver(nullptr) {}
  bool match(LIRValue *op) {
    if (receiver)
      *receiver = op;
    return true;
  }

protected:
  LIRValue **receiver;
};

class pReg : public pOperand {
public:
  pReg() : pOperand(){};
  pReg(LIRValue *&receiver) : pOperand(receiver){};
  bool match(LIRValue *op) {
    if (op->isReg())
      return pOperand::match(op);
    return false;
  }
};

class pSSAReg : public pReg {
public:
  pSSAReg() : pReg(){};
  pSSAReg(LIRValue *&receiver) : pReg(receiver){};
  bool match(LIRValue *op) {
    if (pReg::match(op))
      return (op->isVReg() && op->getDefs().size() == 1) ||
             op->as<Register>()->getRegId() == ZERO;
    return false;
  }
};

class pSSARegNonZero : public pReg {
public:
  pSSARegNonZero() : pReg(){};
  pSSARegNonZero(LIRValue *&receiver) : pReg(receiver){};
  bool match(LIRValue *op) {
    if (pReg::match(op))
      return (op->isVReg() && op->getDefs().size() == 1);
    return false;
  }
};
template <typename Sub> class pSingleDef : public pSSARegNonZero {
public:
  pSingleDef(Sub subpattern) : subpattern(subpattern){};
  bool match(LIRValue *op) {
    if (pSSARegNonZero::match(op) &&
        subpattern.match(op->getDefs().getFirst()->getInst()))
      return true;
    return false;
  }

private:
  Sub subpattern;
};

class pMustBe {
public:
  pMustBe(LIRValue *receiver);
  bool match(LIRValue *op) { return op == specific; }

private:
  LIRValue *specific;
};

class pImm : public pOperand {
public:
  pImm() : pOperand() {}
  pImm(LIRImm *&v) : pOperand((LIRValue *&)v) {}
  bool match(LIRValue *imm) {
    if (imm->isImm())
      return pOperand::match(imm);
    return false;
  }
};

class pSpecificImm : public pOperand {
public:
  pSpecificImm(uint64_t value) : value(value) {}
  bool match(LIRValue *imm) {
    return imm->isImm() && imm->as<LIRImm>()->getValue() == value;
  }

protected:
  uint64_t value;
};

class pZeroReg : public pReg {
public:
  bool match(LIRValue *reg) {
    if (pReg::match(reg) && reg->as<Register>()->getRegId() == ZERO)
      return true;
    return false;
  }
};

class pRAReg : public pReg {
public:
  bool match(LIRValue *reg) {
    if (pReg::match(reg) && reg->as<Register>()->getRegId() == RA)
      return true;
    return false;
  }
};

class pInst {
public:
  pInst(const LIRInst *&receiver) : receiver(&receiver) {}
  pInst() : receiver(nullptr) {}
  bool match(const LIRInst *inst) {
    if (receiver)
      *receiver = inst;
    return true;
  }

protected:
  const LIRInst **receiver;
};

class pInstWithType : public pInst {
public:
  pInstWithType(LIRInstID type) : pInst(), type(type) {}
  pInstWithType(LIRInstID type, const LIRInst *&inst)
      : pInst(inst), type(type) {}
  bool match(const LIRInst *inst) {
    if (inst->type == type)
      return pInst::match(inst);
    return false;
  }

private:
  LIRInstID type;
};

template <int operandNum, typename... SubPatterns>
class pSpecificInst : public pInst {
public:
  pSpecificInst();
  pSpecificInst(LIRInstID type) : pInst(), type(type) {}
  bool match(const LIRInst *inst) {
    if (inst->type == type)
      return pInst::match(inst);
    return false;
  }

private:
  LIRInstID type;
};

static inline bool isLoadOrStore(const LIRInst *inst) {
  switch (inst->getOpcode()) {
  case SB:
  case SH:
  case SW:
  case SD:
  case LB:
  case LH:
  case LW:
  case LD:
  case FLW:
  case FSW:
  case FLD:
  case FSD:
    return true;
  default:
    return false;
  }
}

template <typename SubPattern1, typename SubPattern2, typename SubPattern3>
class pLoadOrStore : public pInst {
public:
  pLoadOrStore(SubPattern1 sub1, SubPattern2 sub2, SubPattern3 sub3)
      : sub1(sub1), sub2(sub2), sub3(sub3) {}
  bool match(const LIRInst *inst) {
    return isLoadOrStore(inst) && pInst::match(inst) &&
           sub1.match(inst->getOp(0)) && sub2.match(inst->getOp(1)) &&
           sub3.match(inst->getOp(2));
  }

private:
  SubPattern1 sub1;
  SubPattern2 sub2;
  SubPattern3 sub3;
};

class pRet : public pInstWithType {
public:
  pRet() : pInstWithType(JALR) {}
  bool match(const LIRInst *inst) {
    return pInstWithType::match(inst) && pZeroReg().match(inst->getOp(0)) &&
           pRAReg().match(inst->getOp(1)) &&
           pSpecificImm(0).match(inst->getOp(2));
  }
};

template <typename ToPattern, typename FromPattern> class pCopy : public pInst {
public:
  pCopy(ToPattern toPattern, FromPattern fromPattern)
      : pInst(), toPattern(toPattern), fromPattern(fromPattern) {}
  bool match(const LIRInst *inst) {
    if (!pInst::match(inst))
      return false;

    if (inst->getOpcode() == ADD)
      return toPattern.match(inst->getOp(0)) &&
             fromPattern.match(inst->getOp(1)) &&
             pZeroReg().match(inst->getOp(2));

    if (inst->getOpcode() == FSGNJ_S || inst->getOpcode() == FSGNJ_D)
      return toPattern.match(inst->getOp(0)) &&
             fromPattern.match(inst->getOp(1)) &&
             inst->getOp(1) == inst->getOp(2);

    return false;
  }

private:
  ToPattern toPattern;
  FromPattern fromPattern;
};

template <typename DefPattern, typename UsePattern1, typename UsePattern2>
class pDUUInst : public pInst {
public:
  pDUUInst(DefPattern defPattern, UsePattern1 usePattern1,
           UsePattern2 usePattern2)
      : pInst(), defPattern(defPattern), usePattern1(usePattern1),
        usePattern2(usePattern2) {}

  bool match(const LIRInst *inst) {
    if (!pInst::match(inst))
      return false;

    if (inst->numOps == 3 && inst->operands[0].isDef() &&
        inst->operands[1].isUse() && inst->operands[2].isUse())
      return defPattern.match(inst->getOp(0)) &&
             usePattern1.match(inst->getOp(1)) &&
             usePattern2.match(inst->getOp(2));

    return false;
  }

private:
  DefPattern defPattern;
  UsePattern1 usePattern1;
  UsePattern2 usePattern2;
};

template <typename UsePattern1, typename UsePattern2, typename UsePattern3>
class pUUUInst : public pInst {
public:
  pUUUInst(UsePattern1 usePattern1, UsePattern2 usePattern2,
           UsePattern3 usePattern3)
      : pInst(), usePattern1(usePattern1), usePattern2(usePattern2),
        usePattern3(usePattern3) {}

  bool match(const LIRInst *inst) {
    if (!pInst::match(inst))
      return false;

    if (inst->numOps == 3 && inst->operands[0].isUse() &&
        inst->operands[1].isUse() && inst->operands[2].isUse())
      return usePattern1.match(inst->getOp(0)) &&
             usePattern2.match(inst->getOp(1)) &&
             usePattern3.match(inst->getOp(2));

    return false;
  }

private:
  UsePattern1 usePattern1;
  UsePattern2 usePattern2;
  UsePattern3 usePattern3;
};

template <typename DefPattern, typename UsePattern1, typename UsePattern2>
class pSpecificDUUInst : public pDUUInst<DefPattern, UsePattern1, UsePattern2> {
public:
  pSpecificDUUInst(LIRInstID opcode, DefPattern defPattern,
                   UsePattern1 usePattern1, UsePattern2 usePattern2)
      : pDUUInst<DefPattern, UsePattern1, UsePattern2>(defPattern, usePattern1,
                                                       usePattern2),
        opcode(opcode) {}

  bool match(const LIRInst *inst) {
    return inst->getOpcode() == opcode &&
           pDUUInst<DefPattern, UsePattern1, UsePattern2>::match(inst);
  }

private:
  LIRInstID opcode;
};

template <typename UsePattern1, typename UsePattern2, typename UsePattern3>
class pSpecificUUUInst
    : public pUUUInst<UsePattern1, UsePattern2, UsePattern3> {
public:
  pSpecificUUUInst(LIRInstID opcode, UsePattern1 usePattern1,
                   UsePattern2 usePattern2, UsePattern3 usePattern3)
      : pUUUInst<UsePattern1, UsePattern2, UsePattern3>(
            usePattern1, usePattern2, usePattern3),
        opcode(opcode) {}

  bool match(const LIRInst *inst) {
    return inst->getOpcode() == opcode &&
           pUUUInst<UsePattern1, UsePattern2, UsePattern3>::match(inst);
  }

private:
  LIRInstID opcode;
};
} /* namespace nnvm::riscv::pattern */
