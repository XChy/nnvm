#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "Value.h"
#include <string>
#include <vector>

namespace nnvm {

enum class InstType {
  // Arithmetic operators for integer.
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
  // Comparison between integer.
  ICmp,
  // Comparison between integer.
  FCmp,
  // Bitwise operator.
  And,
  Or,
  Xor,
  Shl,
  LShr,
  AShr,
  // Terminators.
  Ret,
  Br,
  // Cast.
  ZExt,
  SExt,
  Trunc,
  // Memory instructions.
  Stack,
  Load,
  Store,
  PtrAdd,
  // Other
  Call,
  Phi
};

class Metadata;

class Instruction : public Value, public ListTrait<Instruction> {
public:
  Instruction() : metadata(nullptr) { valueType = ValueType::Instruction; }
  Instruction(InstType opcode) : metadata(nullptr), instType(opcode) {
    valueType = ValueType::Instruction;
  }

  InstType getOpcode() const { return instType; }
  Metadata *getMetadata() { return metadata; }
  std::string dump() const;

private:
  InstType instType;
  std::vector<Use *> operandList;
  Metadata *metadata;
};

} // namespace nnvm
