#pragma once

#include "Backend/RISCV/EmitInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "IR/Instruction.h"
#include "StackSlot.h"
#include "Utils/Collection.h"
#include "Utils/Debug.h"
#include <ADT/GenericInt.h>
#include <array>
#include <cstddef>
#include <iostream>
#include <list>
#include <string>
#include <vector>

namespace nnvm::riscv {

class LowBB;

class LowGlobal {
public:
  std::string name;
  bool isExternal = false;
};

class LowGlobalVar : public LowGlobal {
public:
  bool isAllZeros = false;
  uint64_t size = 0;
  std::vector<std::byte> data;

  void emit(std::ostream &out, EmitInfo &info) const {
    out << name << ":\n";
    if (isAllZeros) {
      out << ".space " << size;
    } else {
      out << ".byte ";
      std::vector<std::string> dataDump(data.size());
      for (int i = 0; i < data.size(); i++)
        dataDump[i] = std::to_string((unsigned char)data[i]);
      out << join(dataDump.begin(), dataDump.end(), ", ");
    }
  }
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
    Function,
    StackSlot,
    BasicBlock,
    GlobalVar,
  };

  enum LowValueType { i64, i32, i16, i8, i1, Float, Imm };
  static LowOperand none() { return LowOperand{.type = None}; }

  static LowOperand stackSlot(uint64_t stackSlotId) {
    return LowOperand{.type = StackSlot, .stackSlotId = stackSlotId};
  }

  static LowOperand constant(uint64_t c) {
    return LowOperand{.type = Constant, .immValue = c};
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

  bool isPhyReg() const { return isGPR() || isFPR(); }
  bool isGPR() const { return type == GPRegister; }
  bool isVR() const { return type == VirtualRegister; }
  bool isFPR() const { return type == FPRegister; }
  bool isReg() const { return isGPR() || isVR() || isFPR(); }
  bool isImm() const { return type == Immediate; }
  bool isStackSlot() const { return type == StackSlot; }
  bool isConstant() const { return type == Constant; }
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
        .regId = id,
    };
  }

  static LowOperand gpr(uint64_t id, LowValueType valueType) {
    return LowOperand{
        .type = LowOperand::GPRegister,
        .valueType = valueType,
        .regId = id,
    };
  }

  static LowOperand fpr(uint64_t id, LowValueType valueType) {
    return LowOperand{
        .type = LowOperand::FPRegister,
        .valueType = valueType,
        .regId = id,
    };
  }

  static LowOperand function(LowFunc *func) {
    return LowOperand{
        .type = LowOperand::Function,
        .flag = LowOperand::Use,
        .func = func,
    };
  }

  void emit(std::ostream &out, EmitInfo &info) const;

  OperandType type;
  LowValueType valueType;
  OperandFlag flag;
  bool lastUsed = false;

  union {
    uint64_t regId;
    uint64_t immValue;
    float fImmValue;
    uint64_t stackSlotId;
    LowBB *bb;
    LowFunc *func;
    LowGlobalVar *var;
  };
};

class LowInst {
public:
  void emit(std::ostream &out, EmitInfo &info) const;

  // op def, use1, use2
  static LowInst create(uint64_t type, const LowOperand &def,
                        const LowOperand &use1, const LowOperand &use2) {
    return LowInst{.type = type, .operand{def.def(), use1.use(), use2.use()}};
  }

  // op def, use1
  static LowInst create(uint64_t type, const LowOperand &def,
                        const LowOperand &use1) {
    return LowInst{.type = type, .operand{def.def(), use1.use()}};
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

  uint getSuccNum();
  LowBB *getSucc(int index);

  std::list<LowInst> insts;
};

class LowFunc : public LowGlobal {
public:
  void emit(std::ostream &out, EmitInfo &info) const;

  std::vector<LowBB *> BBs;
  std::vector<LowOperand> args;
  std::vector<StackSlot> stackSlots;
  uint64_t largestVRegID = VR_BEGIN;

  LowBB *getEntry() { return BBs[0]; }

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
  std::vector<LowGlobalVar *> globals;

  void emit(std::ostream &out) const;

  ~LowModule();
};
} // namespace nnvm::riscv
