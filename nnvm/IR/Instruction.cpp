#include "Instruction.h"
#include "Module.h"
#include "Utils/Collection.h"
#include "Utils/Debug.h"
#include <string>
#include <unordered_map>

using namespace nnvm;

Instruction::Instruction(InstID opcode, const std::vector<Value *> operands,
                         Type *type)
    : Instruction(opcode, type) {
  setOperands(operands);
}

Instruction::Instruction(InstID opcode, uint numOperands, Type *type)
    : Instruction(opcode, type) {
  for (int i = 0; i < numOperands; i++)
    useeList.push_back(new Use(this, nullptr));
}

void Instruction::setOperands(const std::vector<Value *> &operands) {
  for (auto *use : useeList)
    use->removeFromList();

  for (auto *use : useeList)
    delete use;

  useeList.clear();

  for (Value *usee : operands)
    useeList.push_back(new Use(this, usee));
}
void Instruction::setOperand(uint no, Value *operand) {
  useeList[no]->set(operand);
}

void Instruction::addOperand(Value *operand) {
  useeList.push_back(new Use(this, operand));
}

Value *Instruction::getOperand(uint no) const {
  return useeList[no]->getUsee();
}

void Instruction::swapOperand(uint a, uint b) {
  Value *tmp = getOperand(a);
  setOperand(a, getOperand(b));
  setOperand(b, tmp);
}

// Consistent with LLVM.
static std::unordered_map<InstID, std::string> binOpNameTable = {
    {InstID::Add, "add"},
    {InstID::Sub, "sub"},
    {InstID::Mul, "mul"},
    {InstID::And, "and"},
    {InstID::Or, "or"},
    {InstID::Xor, "xor"},
    {InstID::Shl, "shl"},
    {InstID::AShr, "ashr"},
    {InstID::LShr, "lshr"},
    {InstID::UDiv, "udiv"},
    {InstID::SDiv, "sdiv"},
    {InstID::URem, "urem"},
    {InstID::SRem, "srem"},
    {InstID::FAdd, "fadd"},
    {InstID::FSub, "fsub"},
    {InstID::FMul, "fmul"},
    {InstID::FDiv, "fdiv"},
    {InstID::SMin, "signed min"},
    {InstID::SMax, "signed max"},
    {InstID::UMin, "unsigned min"},
    {InstID::UMax, "unsigned max"},
    {InstID::PtrAdd, "ptradd"},
};

static std::unordered_map<InstID, std::string> unaryOpTable = {
    {InstID::ZExt, "zext"}, {InstID::SExt, "sext"}, {InstID::F2SI, "f2si"},
    {InstID::F2UI, "f2ui"}, {InstID::SI2F, "si2f"}, {InstID::UI2F, "ui2f"},
};

std::string Instruction::getOpName() const {
  if (getOpcode() > InstID::BINOP_BEGIN && getOpcode() < InstID::BINOP_END) {
    return binOpNameTable[getOpcode()];
  }
  return "Not implemented";
}

bool Instruction::mayWriteToMemory() const {
  switch (getOpcode()) {
  case InstID::Store:
  case InstID::Call:
    return true;
  default:
    return false;
  }
}

bool Instruction::mayReadMemory() const {
  switch (getOpcode()) {
  case InstID::Load:
  case InstID::Call:
    return true;
  default:
    return false;
  }
}

bool Instruction::haveSideEffect() const {
  return mayWriteToMemory() || mayReadMemory();
}

bool Instruction::moveable() const {
  return !(mayWriteToMemory() || isa<TerminatorInst>() || isa<PhiNode>());
}

bool Instruction::commutative() const {
  switch (getOpcode()) {
  case InstID::Add:
  case InstID::FAdd:
  case InstID::Mul:
  case InstID::FMul:
  case InstID::And:
  case InstID::Or:
  case InstID::Xor:
    return true;
  default:
    return false;
  }
}

std::string Instruction::dump() {
  std::string ret;
  if (getType() && !getType()->isVoid())
    ret += getName() + " = ";
  if (instID > InstID::BINOP_BEGIN && instID < InstID::BINOP_END) {
    std::string op = binOpNameTable[instID];
    ret += (op + " " + getOperand(0)->dumpAsOperand() + ", " +
            getOperand(1)->dumpAsOperand());
  } else if (instID > InstID::CAST_BEGIN && instID < InstID::CAST_END) {
    std::string op = unaryOpTable[instID];
    ret += (op + " " + getOperand(0)->dumpAsOperand() + " to " +
            getType()->dump());
  } else {
    std::vector<std::string> operandDump;
    for (Use *operand : useeList)
      operandDump.push_back(operand->getUsee()->dumpAsOperand());

    switch (instID) {
    case InstID::Store:
      ret = "store " + getOperand(0)->dumpAsOperand() + +" to " +
            getOperand(1)->dumpAsOperand();
      break;
    case InstID::Load:
      ret = getName() + " = load " + type->dump() + " from " +
            getOperand(0)->dumpAsOperand();
      break;
    case InstID::Ret:
      ret += "ret ";
      ret += getOperandNum() ? getOperand(0)->dumpAsOperand() : "";
      break;
    case InstID::Unreachable:
      ret = "unreachable";
      break;
    case InstID::ICmp:
      ret += "icmp ";
      ret += ICmpInst::getPredName(cast<ICmpInst>(this)->getPredicate());
      ret += " ";
      ret += getOperand(0)->dumpAsOperand();
      ret += ", ";
      ret += getOperand(1)->dumpAsOperand();
      break;
    case InstID::FCmp:
      ret += "fcmp ";
      ret += FCmpInst::getPredName(cast<FCmpInst>(this)->getPredicate());
      ret += " ";
      ret += getOperand(0)->dumpAsOperand();
      ret += ", ";
      ret += getOperand(1)->dumpAsOperand();
      break;
    case InstID::Br:
      ret += "br ";
      ret += join(operandDump.begin(), operandDump.end(), ", ");
      break;
    case InstID::WhichOf:
      ret += "which ";
      ret += getOperand(0)->dumpAsOperand();
      ret += " of ";
      ret += getOperand(1)->dumpAsOperand();
      ret += ", ";
      ret += getOperand(2)->dumpAsOperand();
      break;
    case InstID::FNeg:
      ret += "fneg ";
      ret += getOperand(0)->dumpAsOperand();
      break;
    case InstID::Pin:
      ret += "pin ";
      ret += getOperand(0)->dumpAsOperand();
      break;
    case InstID::Call:
      ret += "call ";
      ret += getOperand(0)->dumpAsOperand();
      ret += "(" + join(operandDump.begin() + 1, operandDump.end(), ", ") + ")";
      break;
    case InstID::Phi:
      ret += "phi ";
      ret += "[" + join(operandDump.begin(), operandDump.end(), ", ") + "]";
      break;
    default:
      ret = "ILLEGAL!";
      break;
    }
  }
  ret += "\n";
  return ret;
}

Instruction *Instruction::copyWithName() {
  auto *ret = copy();
  ret->setName(getName(), *getBlock()->getParent()->getModule());
  return ret;
}

void Instruction::moveTo(BasicBlock *otherBB) {
  removeFromBB();
  otherBB->end().insertBefore(this);
}

void Instruction::moveBeforeTerm(BasicBlock *otherBB) {
  removeFromBB();
  otherBB->termEnd().insertBefore(this);
}

Instruction::~Instruction() {
  for (Use *use : useeList) {
    delete use;
  }
}

StackInst::StackInst(Module &module)
    : Instruction(InstID::Stack, module.getPtrType()) {}

StackInst::StackInst(Module &module, GInt allocatedBytes) : StackInst(module) {
  this->allocatedBytes = allocatedBytes;
}

StackInst::StackInst(Type *type, GInt allocatedBytes)
    : Instruction(InstID::Stack, type), allocatedBytes(allocatedBytes) {}

std::string StackInst::dump() {
  return "%" + getName() + " = " + "stack " + std::to_string(allocatedBytes) +
         "\n";
}

std::string StoreInst::dump() {
  return "store " + getStoredValue()->dumpAsOperand() + +" to " +
         getDest()->dumpAsOperand() + "\n";
}

std::string ICmpInst::getPredName(Predicate p) {
  switch (p) {
  case EQ:
    return "eq";
  case NE:
    return "ne";
  case SLT:
    return "slt";
  case SLE:
    return "sle";
  case SGT:
    return "sgt";
  case SGE:
    return "sge";
  case ULT:
    return "ult";
  case ULE:
    return "ule";
  case UGT:
    return "ugt";
  case UGE:
    return "uge";
  }
  return "none";
}

ICmpInst::Predicate ICmpInst::invertPred(Predicate pred) {
  switch (pred) {
  case EQ:
    return NE;
  case NE:
    return EQ;
  case SLT:
    return SGE;
  case SLE:
    return SGT;
  case SGT:
    return SLE;
  case SGE:
    return SLT;
  case ULT:
    return UGE;
  case ULE:
    return UGT;
  case UGT:
    return ULE;
  case UGE:
    return ULT;
  }
  nnvm_unimpl();
}

std::string FCmpInst::getPredName(Predicate p) {
  switch (p) {
  case OEQ:
    return "oeq";
  case ONE:
    return "one";
  case OLT:
    return "olt";
  case OLE:
    return "ole";
  case OGT:
    return "ogt";
  case OGE:
    return "oge";
  case ULT:
    return "ult";
  case ULE:
    return "ule";
  case UGT:
    return "ugt";
  case UGE:
    return "uge";
  }
  return "none";
}

CallInst::CallInst(Function *callee)
    : CallInst(callee, callee->getReturnType()) {
  // TODO: maintain arguments?
}

Function *CallInst::getFuncCallee() const {
  return cast<Function>(getCallee());
}

void CallInst::setArguments(const std::vector<Value *> &args) {
  std::vector<Value *> operands = {getCallee()};
  operands.reserve(args.size() + 1);
  operands.insert(operands.end(), args.begin(), args.end());
  setOperands(operands);
}

std::vector<Value *> CallInst::collectArgs() const {
  std::vector<Value *> args;
  for (uint i = 0; i < getArgNum(); i++)
    args.push_back(getArg(i));
  return args;
}

void PhiNode::addIncoming(BasicBlock *incomingBB, Value *incomingValue) {
  addOperand(incomingBB);
  addOperand(incomingValue);
}

void PhiNode::setIncomingValue(BasicBlock *incomingBB, Value *incomingValue) {
  for (size_t i = 0; i < getOperandNum(); i += 2)
    if (getOperand(i) == incomingBB)
      setOperand(i + 1, incomingValue);
  nnvm_unreachable("Not found incoming")
}

void PhiNode::removeIncoming(BasicBlock *incomingBB) {
  std::vector<Value *> newIncomings;

  for (size_t i = 0; i < getOperandNum(); i += 2) {
    if (getOperand(i) == incomingBB)
      continue;
    newIncomings.push_back(getOperand(i));
    newIncomings.push_back(getOperand(i + 1));
  }

  setOperands(newIncomings);
}

void PhiNode::setIncomingBB(uint64_t index, BasicBlock *incomingBB) {
  setOperand(index * 2, incomingBB);
}
void PhiNode::setIncomingValue(uint64_t index, Value *incomingValue) {
  setOperand(index * 2 + 1, incomingValue);
}

void PhiNode::replaceIncoming(BasicBlock *original, BasicBlock *current) {
  for (uint64_t i = 0; i < getIncomingNum(); i++)
    if (getIncomingBB(i) == original)
      setIncomingBB(i, current);
}

BasicBlock *PhiNode::getIncomingBB(uint64_t index) const {
  return cast<BasicBlock>(getOperand(2 * index));
}

Value *PhiNode::getIncomingValueOf(BasicBlock *incoming) const {
  for (size_t i = 0; i < getOperandNum(); i += 2)
    if (getOperand(i) == incoming)
      return getOperand(i + 1);
  return nullptr;
}

std::vector<BasicBlock *> PhiNode::getAllIncomingBBs() const {
  std::vector<BasicBlock *> ret;
  for (uint64_t i = 0; i < getIncomingNum(); i++)
    ret.push_back(getIncomingBB(i));
  return ret;
}
