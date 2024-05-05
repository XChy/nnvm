#pragma once

#include "ADT/GenericInt.h"
#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include "Value.h"
#include <string>
#include <vector>

namespace nnvm {

enum class InstID {
  BINOP_BEGIN,
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
  BINOP_END,
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
  TERMINATOR_BEGIN,
  Ret,
  Br,
  TERMINATOR_END,
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
class Module;

class Instruction : public Value, public ListTrait<Instruction> {
public:
  Instruction() : metadata(nullptr) { valueID = ValueID::Instruction; }
  Instruction(InstID opcode) : instID(opcode), metadata(nullptr) {
    valueID = ValueID::Instruction;
  }
  Instruction(InstID opcode, const std::vector<Value *> operands);
  Instruction(InstID opcode, uint numOperands);
  ~Instruction();

  void setOperand(uint no, Value *);
  Value *getOperand(uint no);

  InstID getOpcode() const { return instID; }

  void setParent(BasicBlock *parent) { this->parent = parent; }
  const BasicBlock *getParent() const { return parent; }
  BasicBlock *getParent() { return parent; }

  void setMetadata(Metadata *metadata) { this->metadata = metadata; }
  const Metadata *getMetadata() const { return metadata; }
  Metadata *getMetadata() { return metadata; }

  std::string dump() override;

private:
  InstID instID;
  std::vector<Use *> useeList;
  Metadata *metadata;
  BasicBlock *parent;
};

class StackInst : public Instruction {
public:
  StackInst(Module &module);
  StackInst(Module &module, GInt allocatedBytes);

  std::string dump() override;

private:
  GInt allocatedBytes;
};

class StoreInst : public Instruction {
public:
  StoreInst() : Instruction(InstID::Store, 2) {}

  Value *getStoredValue() { return getOperand(0); }
  Value *getDest() { return getOperand(1); }

  std::string dump() override;

private:
};

class LoadInst : public Instruction {
public:
  LoadInst() : Instruction(InstID::Load, 1) {}

  Value *getSrc() { return getOperand(0); }

  std::string dump() override;

private:
};

} // namespace nnvm
