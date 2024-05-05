#pragma once

#include <array>
#include <string>
#include <string_view>
#include <vector>
namespace nnvm::riscv {

const std::vector<const char *> &getRegisterList();

class LowOperand {
public:
  enum OperandFlag { VirtualRegister, Register, Immediate };

  void emit(std::ostream &out) {
    switch (flag) {
    case VirtualRegister:
      out << std::string("v") << std::to_string(registerIndex);
    case Register:
      out << std::string(getRegisterList()[registerIndex]);
    case Immediate:
      // TODO: immediate
      out << std::to_string(0);
    }
  }

  OperandFlag flag;
  uint registerIndex;
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
  std::vector<LowBB> BBs;
};
} // namespace nnvm::riscv
