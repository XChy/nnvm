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
  bool match(LIRValue *op) {
    if (op->isReg())
      return pOperand::match(op);
    return false;
  }
};

class pImm : public pOperand {
public:
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

class pRet : public pInstWithType {
public:
  pRet() : pInstWithType(JALR) {}
  bool match(const LIRInst *inst) {
    return pInst::match(inst) && pZeroReg().match(inst->getOp(0)) &&
           pRAReg().match(inst->getOp(1)) &&
           pSpecificImm(0).match(inst->getOp(2));
  }
};

} /* namespace nnvm::riscv::pattern */
