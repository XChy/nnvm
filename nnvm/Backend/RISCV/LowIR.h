#pragma once

#include "Backend/RISCV/EmitInfo.h"
#include "IR/Instruction.h"
#include "StackSlot.h"
#include "Utils/Debug.h"
#include <ADT/GenericInt.h>
#include <array>
#include <iostream>
#include <list>
#include <string>
#include <vector>

namespace nnvm::riscv {

class LowBB;

class LowGlobal {
public:
  std::string name;
};

class LowOperand {
public:
  enum OperandFlag : int {
    Use = 1,
    Def = 2,
  };

  enum OperandType {
    None,
    Constant, // Need to be materialized finally.
    VirtualRegister,
    GPRegister,
    FPRegister,
    Immediate, // Different from Constant, this is valid for machine
               // instruction.
    StackSlot,
    BasicBlock,
  };

  enum LowValueType { i64, i32, i16, i8, i1, Float, Imm };
  static LowOperand none() { return LowOperand{.type = None}; }
  static LowOperand stackSlot(uint64_t stackSlotId) {
    return LowOperand{.type = StackSlot, .stackSlotId = stackSlotId};
  }
  static LowOperand label(LowBB *bb) {
    return LowOperand{.type = BasicBlock, .bb = bb};
  }

  uint64_t bitwidth() const {
    switch (valueType) {
    case i64:
      return 64;
    case i32:
      return 32;
    case i16:
      return 16;
    case i8:
      return 8;
    case i1:
      return 1;
    case Float:
      return 32;
    default:
      nnvm_unreachable("Not implemented")
    }
  }

  bool isGPR() const { return type == GPRegister; }
  bool isVR() const { return type == VirtualRegister; }
  bool isFPR() const { return type == FPRegister; }
  bool isReg() const { return isGPR() || isVR() || isFPR(); }
  bool isImm() const { return type == Immediate; }
  bool isStackSlot() const { return type == StackSlot; }
  bool isUse() const { return flag & Use; }
  bool isDef() const { return flag & Def; }

  LowOperand use() const {
    LowOperand ret(*this);
    ret.flag = (OperandFlag)(ret.flag | Use);
    ret.flag = (OperandFlag)(ret.flag & ~Def);
    return ret;
  }

  LowOperand def() const {
    LowOperand ret(*this);
    ret.flag = (OperandFlag)(ret.flag & ~Use);
    ret.flag = (OperandFlag)(ret.flag | Def);
    return ret;
  }

  LowOperand lastUse() const {
    LowOperand ret = this->use();
    ret.lastUsed = true;
    return ret;
  }

  static LowOperand imm(uint64_t value) {
    return LowOperand{
        .type = Immediate, .valueType = Imm, .flag = Use, .immValue = value};
  }

  static LowOperand vreg(uint64_t id, LowValueType valueType) {
    return LowOperand{
        .type = LowOperand::VirtualRegister,
        .valueType = valueType,
        .flag = LowOperand::Def,
        .regId = id,
    };
  }

  void emit(std::ostream &out, EmitInfo &info) const;

  OperandType type;
  LowValueType valueType;
  OperandFlag flag;
  bool lastUsed;

  union {
    uint64_t regId;
    uint64_t immValue;
    float fImmValue;
    uint64_t stackSlotId;
    LowBB *bb;
  };
};

static inline LowOperand getDef(LowOperand original) {
  original.flag = LowOperand::Def;
  return original;
}

static inline LowOperand getUse(LowOperand original) {
  original.flag = LowOperand::Use;
  return original;
}

class LowInst {
public:
  void emit(std::ostream &out, EmitInfo &info) const;

  static LowInst create(uint64_t type, const LowOperand &def,
                        const LowOperand &use1, const LowOperand &use2) {
    return LowInst{.type = type, .operand{def.def(), use1.use(), use2.use()}};
  }

  uint64_t type;
  std::vector<LowOperand> operand;
};

class LowBB {
public:
  void emit(std::ostream &out, EmitInfo &info, bool showLabel) const;

  typedef std::list<LowInst>::iterator Iterator;

  Iterator begin() { return insts.begin(); }
  Iterator end() { return insts.end(); }
  Iterator insertBefore(Iterator it, const LowInst &I) {
    return insts.insert(it, I);
  }
  Iterator insertAfter(Iterator it, const LowInst &I) {
    return insts.insert(++it, I);
  }

  std::list<LowInst> insts;
};

class LowFunc : public LowGlobal {
public:
  void emit(std::ostream &out, EmitInfo &info) const;

  std::vector<LowBB *> BBs;
  std::vector<LowOperand> args;
  std::vector<StackSlot> stackSlots;
  uint64_t largestVRegID = 0;

  uint64_t allocStackSlot(uint64_t size);
  uint64_t allocStack(const StackSlot &obj);
  uint64_t allocVRegID() { return largestVRegID++; }
  LowOperand allocVReg(LowOperand::LowValueType valueType) {
    return LowOperand::vreg(allocVRegID(), valueType).def();
  }

  ~LowFunc() {
    for (auto *BB : BBs)
      delete BB;
  }
};

class LowModule {
public:
  std::vector<LowFunc *> funcs;

  void emit(std::ostream &out) const {
    EmitInfo info;
    for (auto &func : funcs)
      for (auto *bb : func->BBs)
        info.allocBB(bb);

    // TODO: emit global data
    for (auto *func : funcs)
      out << ".global " << func->name << "\n";

    for (auto *func : funcs)
      func->emit(out, info);
  }

  ~LowModule() {
    for (auto *f : funcs)
      delete f;
  }
};
} // namespace nnvm::riscv
