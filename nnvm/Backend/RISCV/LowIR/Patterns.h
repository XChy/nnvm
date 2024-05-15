#pragma once

#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <ADT/PatternMatch.h>

namespace nnvm::riscv::pattern {

class pOperand {
public:
  pOperand(LowOperand *&receiver) : receiver(&receiver) {}
  pOperand() : receiver(nullptr) {}
  bool match(LowOperand *op) {
    if (receiver)
      *receiver = op;
    return true;
  }

protected:
  LowOperand **receiver;
};

class pReg : public pOperand {
public:
  bool match(LowOperand *reg) {
    if (reg->isReg())
      return pOperand::match(reg);
    return false;
  }
};

class pImm : public pOperand {
public:
  bool match(LowOperand *imm) {
    if (imm->isImm())
      return pOperand::match(imm);
    return false;
  }
};

class pSpecificImm : public pOperand {
public:
  pSpecificImm(uint64_t value) : value(value) {}
  bool match(LowOperand *imm) { return imm->isImm() && imm->immValue == value; }

protected:
  uint64_t value;
};

class pGPR : public pReg {
public:
  bool match(LowOperand *reg) { return reg->isGPR() && pReg::match(reg); }
};

class pZeroReg : public pGPR {
public:
  bool match(LowOperand *reg) {
    return reg->regId == getZeroRegID() && pReg::match(reg);
  }
};

class pRAReg : public pGPR {
public:
  bool match(LowOperand *reg) {
    return reg->regId == getRARegID() && pReg::match(reg);
  }
};

class pInst {
public:
  pInst(LowInst *&receiver) : receiver(&receiver) {}
  pInst() : receiver(nullptr) {}
  bool match(LowInst *inst) {
    if (receiver)
      *receiver = inst;
    return true;
  }

protected:
  LowInst **receiver;
};

class pInstWithType : public pInst {
public:
  pInstWithType(LowInstType type) : pInst(), type(type) {}
  pInstWithType(LowInstType type, LowInst *&inst) : pInst(inst), type(type) {}
  bool match(LowInst *inst) {
    if (inst->type == type)
      return pInst::match(inst);
    return false;
  }

private:
  LowInstType type;
};

template <int operandNum, typename... SubPatterns>
class pSpecificInst : public pInst {
public:
  pSpecificInst();
  pSpecificInst(LowInstType type) : pInst(), type(type) {}
  bool match(LowInst *inst) {
    if (inst->type == type)
      return pInst::match(inst);
    return false;
  }

private:
  LowInstType type;
};

class pRet : public pInstWithType {
public:
  pRet() : pInstWithType(JALR) {}
  bool match(LowInst *inst) {
    return pInst::match(inst) && pZeroReg().match(&inst->operand[0]) &&
           pRAReg().match(&inst->operand[1]) &&
           pSpecificImm(0).match(&inst->operand[2]);
  }

private:
  LowInstType type;
};

} /* namespace nnvm::riscv::pattern */
