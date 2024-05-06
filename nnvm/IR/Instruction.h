#pragma once

#include "ADT/GenericInt.h"
#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include "Value.h"
#include <string>
#include <vector>

#define NNVM_DECLARE_BINOP(ID, Name)                                           \
  class Name : public BinOpInst {                                              \
  public:                                                                      \
    Name(Type *type) : BinOpInst(ID, type) {}                                  \
  };

namespace nnvm {

enum class InstID {
  INST_BEIGN,
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
  // Bitwise operator.
  And,
  Or,
  Xor,
  Shl,
  LShr,
  AShr,
  BINOP_END,
  // Comparison between integer.
  ICmp,
  // Comparison between integer.
  FCmp,
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
  Phi,
  INST_END,

};

class Metadata;
class BasicBlock;
class Module;

class Instruction : public Value, public ListTrait<Instruction> {
public:
  Instruction(InstID opcode, Type *type)
      : Value(ValueID::Instruction, type), instID(opcode), metadata(nullptr) {}
  Instruction(InstID opcode, const std::vector<Value *> operands, Type *type);
  Instruction(InstID opcode, uint numOperands, Type *type);
  ~Instruction();

  void setOperand(uint no, Value *);
  Value *getOperand(uint no);
  uint getOperandNum() { return useeList.size(); }

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

// ===========================
// Memory instructions
// ===========================

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
  StoreInst() : Instruction(InstID::Store, 2, nullptr) {}

  Value *getStoredValue() { return getOperand(0); }
  Value *getDest() { return getOperand(1); }

  std::string dump() override;

private:
};

class LoadInst : public Instruction {
public:
  LoadInst(Type *type) : Instruction(InstID::Load, 1, type) {}

  Value *getSrc() { return getOperand(0); }
};

// ===========================
// Arithmetic binary instructions
// ===========================

class BinOpInst : public Instruction {
public:
  BinOpInst(InstID instID, Type *type) : Instruction(instID, 2, type) {}
  void setLHS(Value *lhs) { setOperand(0, lhs); }
  void setRHS(Value *rhs) { setOperand(1, rhs); }
  Value *getLHS() { return getOperand(0); }
  Value *getRHS() { return getOperand(1); }
};

NNVM_DECLARE_BINOP(InstID::Add, AddInst)
NNVM_DECLARE_BINOP(InstID::Sub, SubInst)
NNVM_DECLARE_BINOP(InstID::Mul, MulInst)
NNVM_DECLARE_BINOP(InstID::Div, DivInst)
NNVM_DECLARE_BINOP(InstID::Rem, RemInst)
NNVM_DECLARE_BINOP(InstID::FAdd, FAddInst)
NNVM_DECLARE_BINOP(InstID::FSub, FSubInst)
NNVM_DECLARE_BINOP(InstID::FMul, FMulInst)
NNVM_DECLARE_BINOP(InstID::FDiv, FDivInst)
NNVM_DECLARE_BINOP(InstID::FRem, FRemInst)
NNVM_DECLARE_BINOP(InstID::And, AndInst)
NNVM_DECLARE_BINOP(InstID::Or, OrInst)
NNVM_DECLARE_BINOP(InstID::Xor, XorInst)
NNVM_DECLARE_BINOP(InstID::Shl, ShlInst)
NNVM_DECLARE_BINOP(InstID::LShr, LShrInst)
NNVM_DECLARE_BINOP(InstID::AShr, AShrInst)

// ===========================
// Terminator instructions
// ===========================

class TerminatorInst : public Instruction {
public:
  TerminatorInst(InstID id, uint successorNum)
      : Instruction(id, nullptr), successorNum(successorNum) {}

  void setSuccessor(int no, BasicBlock *BB) {
    setOperand(getOperandNum() - successorNum + no, (Value *)BB);
  }

  BasicBlock *getSuccessor(int no) {
    return (BasicBlock *)getOperand(getOperandNum() - successorNum + no);
  }

  uint getSuccessorNum() { return successorNum; }

private:
  uint successorNum;
};

class RetInst : public TerminatorInst {
public:
  RetInst() : TerminatorInst(InstID::Ret, 0) {}
};

class BranchInst : public TerminatorInst {
public:
  BranchInst(bool isConditional)
      : TerminatorInst(InstID::Br, isConditional ? 3 : 1) {}
  BranchInst(BasicBlock *directSucc) : BranchInst(false) {
    setSuccessor(0, directSucc);
  }
  BranchInst(Value *cond, BasicBlock *TrueSucc, BasicBlock *FalseSucc)
      : BranchInst(false) {
    setOperand(0, cond);
    setSuccessor(0, TrueSucc);
    setSuccessor(1, FalseSucc);
  }
};

} // namespace nnvm
