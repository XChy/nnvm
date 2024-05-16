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
    Name(Value *lhs, Value *rhs, Type *type)                                   \
        : BinOpInst(ID, lhs, rhs, type) {}                                     \
  };

namespace nnvm {

enum class InstID : uint64_t {
  INST_BEGIN,
  BINOP_BEGIN,
  // Arithmetic operators for integer.
  Add,
  Sub,
  Mul,
  UDiv,
  SDiv,
  URem,
  SRem,
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
  CAST_BEGIN,
  ZExt,
  SExt,
  Trunc,
  SI2F,
  UI2F,
  CAST_END,
  // Memory instructions.
  MEMORY_BEGIN,
  Stack,
  Load,
  Store,
  PtrAdd, // Addressing addtion/subtraction of pointer
  MEMORY_END,
  // Other
  OTHER_BEGIN,
  Call,
  Phi,
  OTHER_END,
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

  void setOperands(const std::vector<Value *> &operands);
  void setOperand(uint no, Value *);
  Value *getOperand(uint no);
  uint getOperandNum() { return useeList.size(); }

  InstID getOpcode() const { return instID; }
  std::string getOpName() const;

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
  GInt getAllocatedBytes() const { return allocatedBytes; }

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
  BinOpInst(InstID instID, Value *lhs, Value *rhs, Type *type)
      : Instruction(instID, {lhs, rhs}, type) {}
  void setLHS(Value *lhs) { setOperand(0, lhs); }
  void setRHS(Value *rhs) { setOperand(1, rhs); }
  Value *getLHS() { return getOperand(0); }
  Value *getRHS() { return getOperand(1); }
};

NNVM_DECLARE_BINOP(InstID::Add, AddInst)
NNVM_DECLARE_BINOP(InstID::Sub, SubInst)
NNVM_DECLARE_BINOP(InstID::Mul, MulInst)
NNVM_DECLARE_BINOP(InstID::UDiv, UDivInst)
NNVM_DECLARE_BINOP(InstID::SDiv, SDivInst)
NNVM_DECLARE_BINOP(InstID::URem, URemInst)
NNVM_DECLARE_BINOP(InstID::SRem, SRemInst)
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
// Comparison instructions.
// ===========================
class ICmpInst : public Instruction {
public:
  enum Predicate { EQ, NE, SLT, SGT, SLE, SGE, ULT, ULE, UGT, UGE };

  static std::string getPredName(Predicate p);

  ICmpInst(Predicate predicate, Type *ty)
      : Instruction(InstID::ICmp, 2, ty), predicate(predicate) {}

  void setPredicate(Predicate pred) { this->predicate = pred; }
  Predicate getPredicate() const { return predicate; }

private:
  Predicate predicate;
};

// ===========================
// Terminator instructions
// ===========================

class TerminatorInst : public Instruction {
public:
  TerminatorInst(InstID id, uint operandNum, uint successorNum)
      : Instruction(id, operandNum + successorNum, nullptr),
        successorNum(successorNum) {}

  void setSucc(int no, BasicBlock *BB) {
    setOperand(getOperandNum() - successorNum + no, (Value *)BB);
  }

  BasicBlock *getSucc(int no) {
    return (BasicBlock *)getOperand(getOperandNum() - successorNum + no);
  }

  uint getSuccNum() { return successorNum; }

private:
  uint successorNum;
};

class RetInst : public TerminatorInst {
public:
  RetInst() : TerminatorInst(InstID::Ret, 0, 0) {}
  RetInst(Value *returned) : TerminatorInst(InstID::Ret, 1, 0) {
    setOperand(0, returned);
  }
};

class BranchInst : public TerminatorInst {
public:
  BranchInst(bool isConditional)
      : TerminatorInst(InstID::Br, isConditional ? 1 : 0,
                       isConditional ? 2 : 1),
        conditional(isConditional) {}
  BranchInst(BasicBlock *directSucc) : BranchInst(false) {
    setSucc(0, directSucc);
  }
  BranchInst(Value *cond, BasicBlock *trueSucc, BasicBlock *falseSucc)
      : BranchInst(true) {
    setOperand(0, cond);
    setSucc(0, trueSucc);
    setSucc(1, falseSucc);
  }

  bool isConditional() const { return conditional; }

private:
  bool conditional;
};

class Function;

class CallInst : public Instruction {
public:
  CallInst(Value *callee, Type *returnType)
      : Instruction(InstID::Call, returnType), callee(callee) {}
  CallInst(Function *callee);
  void setArguments(const std::vector<Value *> &args) { setOperands(args); }

private:
  Value *callee;
};

} // namespace nnvm
