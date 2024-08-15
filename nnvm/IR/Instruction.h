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
    Instruction *copy() override {                                             \
      auto *ret = new Name(getLHS(), getRHS(), getType());                     \
      return ret;                                                              \
    }                                                                          \
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
  // MinMaX
  SMin,
  SMax,
  UMin,
  UMax,
  // PtrAdd: Addressing addtion/subtraction of pointer.
  // Semantics: guarantee the provenance.
  // Example: %new_p = ptradd %p, 16
  PtrAdd,
  BINOP_END,
  // Comparison between integer.
  ICmp,
  // Comparison between float.
  FCmp,
  // Terminators.
  TERMINATOR_BEGIN,
  Ret,
  Br,
  Unreachable,
  TERMINATOR_END,
  // Cast.
  CAST_BEGIN,
  ZExt,
  SExt,
  Trunc,
  SI2F,
  UI2F,
  F2SI,
  F2UI,
  CAST_END,
  // Memory instructions.
  MEMORY_BEGIN,
  Stack,
  Load,
  Store,
  MEMORY_END,
  // Other
  OTHER_BEGIN,
  FNeg,
  WhichOf,
  Pin,
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
  void addOperand(Value *operand);
  Value *getOperand(uint no) const;
  uint getOperandNum() const { return useeList.size(); }

  template <typename Mapper> void replaceOps(Mapper mapper) {
    for (Use *use : useeList) {
      Value *mapped = mapper(use->getUsee());
      if (mapped)
        use->set(mapped);
    }
  }

  InstID getOpcode() const { return instID; }
  std::string getOpName() const;

  bool isBinOp() const {
    return instID > InstID::BINOP_BEGIN && instID < InstID::BINOP_END;
  }

  bool mayWriteToMemory() const;
  bool mayReadMemory() const;
  bool haveSideEffect() const;
  bool moveable() const;

  void setParent(BasicBlock *parent) { this->parent = parent; }
  const BasicBlock *getParent() const { return parent; }
  BasicBlock *getBlock() { return parent; }

  void setMetadata(Metadata *metadata) { this->metadata = metadata; }
  const Metadata *getMetadata() const { return metadata; }
  Metadata *getMetadata() { return metadata; }

  void removeFromBB() { ListTrait<Instruction>::removeFromList(); }
  void eraseFromBB() {
    for (Use *use : useeList)
      use->eraseFromList();
    useeList.clear();
    ListTrait<Instruction>::eraseFromList();
  }

  std::vector<Use *> &getUseeList() { return useeList; }
  const std::vector<Use *> &getUseeList() const { return useeList; }

  void moveTo(BasicBlock *otherBB);
  void moveBeforeTerm(BasicBlock *otherBB);

  std::string dump() override;
  virtual Instruction *copy() = 0;
  Instruction *copyWithName();

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

  Instruction *copy() override {
    return new StackInst(getType(), allocatedBytes);
  }

private:
  StackInst(Type *type, GInt allocatedBytes);
  GInt allocatedBytes;
};

class StoreInst : public Instruction {
public:
  StoreInst() : Instruction(InstID::Store, 2, nullptr) {}

  void setStoredValue(Value *stored) { setOperand(0, stored); }
  Value *getStoredValue() const { return getOperand(0); }

  void setDest(Value *dest) { setOperand(1, dest); }
  Value *getDest() const { return getOperand(1); }

  std::string dump() override;

  Instruction *copy() override {
    auto *ret = new StoreInst;
    ret->setStoredValue(getStoredValue());
    ret->setDest(getDest());
    return ret;
  }

private:
};

class LoadInst : public Instruction {
public:
  LoadInst(Type *type) : Instruction(InstID::Load, 1, type) {}

  Value *getSrc() const { return getOperand(0); }

  Instruction *copy() override {
    auto *ret = new LoadInst(getType());
    ret->setOperand(0, getOperand(0));
    return ret;
  }
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
NNVM_DECLARE_BINOP(InstID::SMin, SMinInst)
NNVM_DECLARE_BINOP(InstID::SMax, SMaxInst)
NNVM_DECLARE_BINOP(InstID::UMin, UMinInst)
NNVM_DECLARE_BINOP(InstID::UMax, UMaxInst)
NNVM_DECLARE_BINOP(InstID::PtrAdd, PtrAddInst)

// ===========================
// Comparison instructions.
// ===========================
class ICmpInst : public Instruction {
public:
  enum Predicate { EQ, NE, SLT, SGT, SLE, SGE, ULT, ULE, UGT, UGE };

  static std::string getPredName(Predicate p);
  static Predicate invertPred(Predicate pred);

  ICmpInst(Predicate predicate, Type *ty)
      : Instruction(InstID::ICmp, 2, ty), predicate(predicate) {}

  void setPredicate(Predicate pred) { this->predicate = pred; }
  Predicate getPredicate() const { return predicate; }

  Instruction *copy() override {
    auto *ret = new ICmpInst(getPredicate(), getType());
    ret->setOperand(0, getOperand(0));
    ret->setOperand(1, getOperand(1));
    return ret;
  }

private:
  Predicate predicate;
};

class FCmpInst : public Instruction {
public:
  enum Predicate { OEQ, ONE, OLT, OGT, OLE, OGE, ULT, ULE, UGT, UGE };

  static std::string getPredName(Predicate p);

  FCmpInst(Predicate predicate, Type *ty)
      : Instruction(InstID::FCmp, 2, ty), predicate(predicate) {}

  void setPredicate(Predicate pred) { this->predicate = pred; }
  Predicate getPredicate() const { return predicate; }

  Instruction *copy() override {
    auto *ret = new FCmpInst(getPredicate(), getType());
    ret->setOperand(0, getOperand(0));
    ret->setOperand(1, getOperand(1));
    return ret;
  }

private:
  Predicate predicate;
};

// ===========================
// Cast instructions
// ===========================

template <InstID ID> class CastInst : public Instruction {
public:
  CastInst(Value *src, Type *toType) : Instruction(ID, {src}, toType) {}
  Type *getFromType() { return getOperand(0)->getType(); }
  Type *getToType() { return getType(); }
};

class ZExtInst : public CastInst<InstID::ZExt> {
public:
  ZExtInst(Value *src, Type *toType) : CastInst(src, toType) {}

  Instruction *copy() override {
    auto *ret = new ZExtInst(getOperand(0), getType());
    return ret;
  }
};

class SExtInst : public CastInst<InstID::SExt> {
public:
  SExtInst(Value *src, Type *toType) : CastInst(src, toType) {}

  Instruction *copy() override {
    auto *ret = new SExtInst(getOperand(0), getType());
    return ret;
  }
};

class TruncInst : public CastInst<InstID::Trunc> {
public:
  TruncInst(Value *src, Type *toType) : CastInst(src, toType) {}

  Instruction *copy() override {
    auto *ret = new TruncInst(getOperand(0), getType());
    return ret;
  }
};

class F2SIInst : public CastInst<InstID::F2SI> {
public:
  F2SIInst(Value *src, Type *toType) : CastInst(src, toType) {}
  Instruction *copy() override {
    auto *ret = new F2SIInst(getOperand(0), getType());
    return ret;
  }
};

class F2UIInst : public CastInst<InstID::F2UI> {
public:
  F2UIInst(Value *src, Type *toType) : CastInst(src, toType) {}
  Instruction *copy() override {
    auto *ret = new F2UIInst(getOperand(0), getType());
    return ret;
  }
};

class SI2FInst : public CastInst<InstID::SI2F> {
public:
  SI2FInst(Value *src, Type *toType) : CastInst(src, toType) {}
  Instruction *copy() override {
    auto *ret = new SI2FInst(getOperand(0), getType());
    return ret;
  }
};

class UI2FInst : public CastInst<InstID::UI2F> {
public:
  UI2FInst(Value *src, Type *toType) : CastInst(src, toType) {}
  Instruction *copy() override {
    auto *ret = new UI2FInst(getOperand(0), getType());
    return ret;
  }
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

  uint getSuccNum() const { return successorNum; }

private:
  uint successorNum;
};

class RetInst : public TerminatorInst {
public:
  RetInst() : TerminatorInst(InstID::Ret, 0, 0) {}
  RetInst(Value *returned) : TerminatorInst(InstID::Ret, 1, 0) {
    setOperand(0, returned);
  }

  Instruction *copy() override {
    RetInst *ret;
    if (getOperandNum() == 0)
      ret = new RetInst();
    else
      ret = new RetInst(getOperand(0));
    return ret;
  }
};

class UnreachableInst : public TerminatorInst {
public:
  UnreachableInst() : TerminatorInst(InstID::Unreachable, 0, 0) {}

  Instruction *copy() override { return new UnreachableInst; }
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
    // assert(cond->getType()->isIntegerNBits(1));
    setOperand(0, cond);
    setSucc(0, trueSucc);
    setSucc(1, falseSucc);
  }

  bool isConditional() const { return conditional; }

  Value *getCondition() const {
    assert(isConditional() && "must be conditional branch");
    return getOperand(0);
  }

  Instruction *copy() override {
    auto *ret = new BranchInst(isConditional());
    for (int i = 0; i < getOperandNum(); i++)
      ret->setOperand(i, getOperand(i));
    return ret;
  }

private:
  bool conditional;
};

// ===========================
// Other instructions
// ===========================

class Function;

class CallInst : public Instruction {
public:
  CallInst(Value *callee, Type *returnType)
      : Instruction(InstID::Call, {callee}, returnType) {}
  CallInst(Function *callee);

  void setCallee(Value *callee) { setOperand(0, callee); }
  Value *getCallee() const { return getOperand(0); }

  Function *getFuncCallee() const;

  Value *getArg(uint i) const { return getOperand(i + 1); }
  uint getArgNum() const { return getOperandNum() - 1; }

  void setArguments(const std::vector<Value *> &args);
  std::vector<Value *> collectArgs() const;

  Instruction *copy() override {
    auto *ret = new CallInst(getCallee(), getType());
    for (int i = 0; i < getArgNum(); i++)
      ret->addOperand(getArg(i));
    return ret;
  }

private:
  Value *callee;
};

class FNegInst : public Instruction {
public:
  FNegInst(Value *operand)
      : Instruction(InstID::FNeg, {operand}, operand->getType()) {
    assert(operand->getType()->isFloat());
  }

  Instruction *copy() override {
    auto *ret = new FNegInst(getOperand(0));
    return ret;
  }
};

class WhichOfInst : public Instruction {
public:
  WhichOfInst(Value *cond, Value *trueVal, Value *falseVal)
      : Instruction(InstID::WhichOf, {cond, trueVal, falseVal},
                    trueVal->getType()) {
    assert(cond->getType()->isIntegerNBits(1));
    assert(trueVal->getType() == falseVal->getType());
  }

  void setCond(Value *cond) { setOperand(0, cond); }
  Value *getCond() const { return getOperand(0); }

  void setTrueVal(Value *val) { setOperand(1, val); }
  Value *getTrueVal() const { return getOperand(1); }

  void setFalseVal(Value *val) { setOperand(2, val); }
  Value *getFalseVal() const { return getOperand(2); }

  Instruction *copy() override {
    auto *ret = new WhichOfInst(getCond(), getTrueVal(), getFalseVal());
    return ret;
  }
};

class PinInst : public Instruction {
public:
  PinInst(Value *operand)
      : Instruction(InstID::Pin, {operand}, operand->getType()) {}

  Instruction *copy() override {
    auto *ret = new PinInst(getOperand(0));
    return ret;
  }
};

// operands: [incomingBB1, incomingValue1, ..., incomingBBn, incomingValuen]
class PhiNode : public Instruction {
public:
  PhiNode(Type *type) : Instruction(InstID::Phi, {}, type) {}

  void addIncoming(BasicBlock *incomingBB, Value *incomingValue);
  void setIncomingValue(BasicBlock *incomingBB, Value *incomingValue);
  uint64_t getIncomingNum() const { return getOperandNum() / 2; }
  void removeIncoming(BasicBlock *incomingBB);

  void setIncomingBB(uint64_t index, BasicBlock *incomingBB);
  void setIncomingValue(uint64_t index, Value *incomingValue);
  void replaceIncoming(BasicBlock *original, BasicBlock *current);

  BasicBlock *getIncomingBB(uint64_t index) const;
  Value *getIncomingValue(uint64_t index) const {
    return getOperand(2 * index + 1);
  }

  std::vector<BasicBlock *> getAllIncomingBBs() const;

  Value *getIncomingValueOf(BasicBlock *incoming) const;

  Instruction *copy() override {
    auto *ret = new PhiNode(getType());
    for (uint64_t i = 0; i < getIncomingNum(); i++)
      ret->addIncoming(getIncomingBB(i), getIncomingValue(i));
    return ret;
  }
};

} // namespace nnvm
