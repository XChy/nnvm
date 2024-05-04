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
class BasicBlock;

class Instruction : public Value, public ListTrait<Instruction> {
public:
  Instruction() : metadata(nullptr) { valueID = ValueID::Instruction; }
  Instruction(InstType opcode) : instType(opcode), metadata(nullptr) {
    valueID = ValueID::Instruction;
  }

  InstType getOpcode() const { return instType; }

  void setParent(BasicBlock *parent) { this->parent = parent; }
  const BasicBlock *getParent() const { return parent; }
  BasicBlock *getParent() { return parent; }

  void setMetadata(Metadata *metadata) { this->metadata = metadata; }
  const Metadata *getMetadata() const { return metadata; }
  Metadata *getMetadata() { return metadata; }

private:
  InstType instType;
  std::vector<Use *> operandList;
  Metadata *metadata;
  BasicBlock *parent;
};

} // namespace nnvm
