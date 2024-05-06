#pragma once

#include "ADT/GenericInt.h"
#include <array>
#include <iostream>
#include <string>
#include <string_view>
#include <vector>
namespace nnvm::riscv {

const std::vector<const char *> &getRegisterList();

class LowOperand {
public:
  enum UseDefFlag { Use, Def, UseAndDef, None };
  enum OperandType { VirtualRegister, GPRegister, FPRegister, Immediate };
  enum LowValueType { i64, i32, i16, i8, Float };

  void emit(std::ostream &out) {
    switch (type) {
    case VirtualRegister:
      out << "v" << registerIndex;
    case GPRegister:
      out << getRegisterList()[registerIndex];
    case FPRegister:
      out << "f" << registerIndex;
    case Immediate:
      out << immediate;
    }
  }

  OperandType type;

  union {
    struct {
      UseDefFlag flag;
      uint registerIndex;
    };

    GInt immediate;
  };
};

class LowInst {
public:
  void emit(std::ostream &out);
  enum InstType { Register, Immediate };
  std::array<LowOperand, 4> operand;
};

class LowBB {
public:
  void emit(std::ostream &out);
  std::vector<LowInst> insts;
};

class LowFunc {
public:
  void emit(std::ostream &out);
  std::vector<LowBB *> BBs;
  std::string name;
  ~LowFunc() {
    for (auto *BB : BBs)
      delete BB;
  }
};

class LowModule {
public:
  std::vector<LowFunc *> funcs;

  void emit(std::ostream &out) {
    for (auto *func : funcs)
      func->emit(out);
  }

  ~LowModule() {
    for (auto *f : funcs)
      delete f;
  }
};
} // namespace nnvm::riscv
