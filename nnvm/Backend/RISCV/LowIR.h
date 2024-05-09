#pragma once

#include <ADT/GenericInt.h>
#include "Backend/RISCV/EmitInfo.h"
#include "IR/Instruction.h"
#include "StackSlot.h"
#include "Utils/Debug.h"
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
  enum UseDefFlag { Use = 1, Def = 2 };
  enum OperandType {
    None,
    VirtualRegister,
    GPRegister,
    FPRegister,
    Immediate,
    StackSlot,
    BasicBlock,
  };

  enum LowValueType { i64, i32, i16, i8, i1, Float, Imm };
  static LowOperand none() { return LowOperand{.type = None}; }
  static LowOperand stack(uint64_t stackSlotId) {
    return LowOperand{.type = StackSlot, .stackSlotId = stackSlotId};
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

  bool isGPR() { return type == GPRegister; }
  bool isVR() { return type == VirtualRegister; }
  bool isFPR() { return type == FPRegister; }
  bool isReg() { return isGPR() || isVR() || isFPR(); }
  bool isStackSlot() { return type == StackSlot; }

  static LowOperand imm(uint64_t value) {
    return LowOperand{
        .type = Immediate, .valueType = Imm, .flag = Use, .immValue = value};
  }

  void emit(std::ostream &out, EmitInfo &info) const;

  OperandType type;
  LowValueType valueType;
  UseDefFlag flag;

  union {
    uint64_t registerId;
    uint64_t immValue;
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

  uint64_t type;
  std::vector<LowOperand> operand;
};

class LowBB {
public:
  void emit(std::ostream &out, EmitInfo &info, bool showLabel) const;

  typedef std::list<LowInst>::iterator Iterator;

  Iterator begin() { return insts.begin(); }
  Iterator end() { return insts.end(); }
  void insertBefore(Iterator it, const LowInst &I) { insts.insert(it, I); }

  std::list<LowInst> insts;
};

class LowFunc : public LowGlobal {
public:
  void emit(std::ostream &out, EmitInfo &info) const;

  std::vector<LowBB *> BBs;
  std::vector<LowOperand> args;
  std::vector<StackSlot> stackSlots;

  uint64_t allocStackSlot(uint64_t size);
  uint64_t allocStack(const StackSlot &obj);

  ~LowFunc() {
    for (auto *BB : BBs)
      delete BB;
  }
};

class LowModule {
public:
  std::vector<LowFunc *> funcs;

  void emit(std::ostream &out, EmitInfo &info) const {
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
