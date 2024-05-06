#pragma once

#include "ADT/GenericInt.h"
#include "Backend/RISCV/EmitInfo.h"
#include <array>
#include <iostream>
#include <string>
#include <vector>

namespace nnvm::riscv {

const std::vector<const char *> &getRegisterList();

class LowBB;

class LowGlobal {
public:
  std::string name;
};

class LowOperand {
public:
  enum UseDefFlag { Use, Def, None };
  enum OperandType {
    VirtualRegister,
    GPRegister,
    FPRegister,
    Immediate,
    BasicBlock,
  };
  enum LowValueType { i64, i32, i16, i8, i1, Float };

  void emit(std::ostream &out, EmitInfo &info) {
    switch (type) {
    case VirtualRegister:
      out << "v" << registerIndex;
    case GPRegister:
      out << getRegisterList()[registerIndex];
    case FPRegister:
      out << "f" << registerIndex;
    case Immediate:
      out << immediate;
    case BasicBlock:
      out << "bb" << info.indexOfBB(bb);
    }
  }

  OperandType type;
  LowValueType valueType;

  union {
    struct {
      UseDefFlag flag;
      uint registerIndex;
    };

    GInt immediate;
    LowBB *bb;
  };
};

class LowInst {
public:
  void emit(std::ostream &out, EmitInfo &info);

  enum LowInstType : uint64_t {
    Add,
    Sub,
    Mul,
    Div,
    Rem,
    // Arithmetic operators for floating number.
    FAdd,
    FSub,
    FMul,
    FDiv,
    FRem,
    // Bitwise operator.
    And,
    Or,
    Xor,
    Shl,
    LShr,
    AShr,
    // Comparison between integer.
    ICmp,
    // Comparison between integer.
    FCmp,
    // Terminators.
    TERMINATOR_BEGIN,
    Return,
    CondBranch,
    TERMINATOR_END,
    // Cast.
    ZExt,
    SExt,
    Trunc,
    Load,
    Store,
    ISA_SPECIFIC,
    BLT,
    // Other
    MoveReg, // mv dst, src
  };

  std::array<LowOperand, 4> operand;
  LowInstType type;
};

class LowBB {
public:
  void emit(std::ostream &out, EmitInfo &info);
  std::vector<LowInst> insts;
};

class LowFunc : public LowGlobal {
public:
  void emit(std::ostream &out, EmitInfo &info);
  std::vector<LowBB *> BBs;
  std::vector<LowOperand> args;

  ~LowFunc() {
    for (auto *BB : BBs)
      delete BB;
  }
};

class LowModule {
public:
  std::vector<LowFunc *> funcs;

  void emit(std::ostream &out, EmitInfo &info) {
    for (auto *func : funcs)
      func->emit(out, info);
  }

  ~LowModule() {
    for (auto *f : funcs)
      delete f;
  }
};
} // namespace nnvm::riscv
