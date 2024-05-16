#include "Instruction.h"
#include "Module.h"
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
  for (Value *usee : operands)
    useeList.push_back(new Use(this, usee));
}
void Instruction::setOperand(uint no, Value *operand) {
  useeList[no]->set(operand);
}

Value *Instruction::getOperand(uint no) { return useeList[no]->getUsee(); }

// Consistent with LLVM.
static std::unordered_map<InstID, std::string> binOpNameTable = {
    {InstID::Add, "add"},   {InstID::Sub, "sub"},   {InstID::Mul, "mul"},
    {InstID::UDiv, "udiv"}, {InstID::SDiv, "sdiv"}, {InstID::URem, "urem"},
    {InstID::SRem, "srem"}, {InstID::FAdd, "fadd"}, {InstID::FSub, "fsub"},
    {InstID::FMul, "fmul"}, {InstID::FDiv, "fdiv"}, {InstID::FRem, "frem"},
};

std::string Instruction::getOpName() const {
  if (getOpcode() > InstID::BINOP_BEGIN && getOpcode() < InstID::BINOP_END) {
    return binOpNameTable[getOpcode()];
  }
  return "Not implemented";
}

std::string Instruction::dump() {
  std::string ret;
  if (instID > InstID::BINOP_BEGIN && instID < InstID::BINOP_END) {
    std::string op = binOpNameTable[instID];
    ret += (getName() + " = " + op + " " + getOperand(0)->dumpAsOperand() +
            ", " + getOperand(1)->dumpAsOperand());
  } else {
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
    case InstID::ICmp:
      ret += "icmp ";
      ret += getOperand(0)->dumpAsOperand();
      ret += ", ";
      ret += getOperand(1)->dumpAsOperand();
      break;
    case InstID::Br:
      ret += "br ";
      for (Use *operand : useeList) {
        if (operand != *useeList.begin())
          ret += ", ";
        ret += operand->getUsee()->dumpAsOperand();
      }
      break;
    default:
      ret = "ILLEGAL!";
      break;
    }
  }
  ret += "\n";
  return ret;
}

Instruction::~Instruction() {
  for (Use *use : useeList)
    delete use;
}

StackInst::StackInst(Module &module)
    : Instruction(InstID::Stack, module.getPtrType()) {}

StackInst::StackInst(Module &module, GInt allocatedBytes) : StackInst(module) {
  this->allocatedBytes = allocatedBytes;
}

std::string StackInst::dump() {
  return "%" + getName() + " = " + "stack " + std::to_string(allocatedBytes) +
         "\n";
}

std::string StoreInst::dump() {
  return "store " + getStoredValue()->dumpAsOperand() + +" to " +
         getDest()->dumpAsOperand() + "\n";
}

CallInst::CallInst(Function *callee)
    : CallInst(callee, callee->getReturnType()) {
  // TODO: maintain arguments?
}
