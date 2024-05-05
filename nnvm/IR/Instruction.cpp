#include "Instruction.h"
#include "Module.h"
#include <string>
#include <unordered_map>

using namespace nnvm;

Instruction::Instruction(InstID opcode, const std::vector<Value *> operands) {
  this->instID = opcode;
  for (Value *operand : operands)
    useeList.push_back(new Use(this, operand));
}

Instruction::Instruction(InstID opcode, uint numOperands) : instID(opcode) {
  for (int i = 0; i < numOperands; i++)
    useeList.push_back(new Use(this, nullptr));
}

void Instruction::setOperand(uint no, Value *operand) {
  useeList[no]->set(operand);
}
Value *Instruction::getOperand(uint no) { return useeList[no]->getUsee(); }

static std::unordered_map<InstID, std::string> binOpNameTable = {
    {InstID::Add, "add"}, {InstID::Sub, "sub"}, {InstID::Mul, "mul"},
    {InstID::Div, "div"}, {InstID::Rem, "rem"},

};

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

StackInst::StackInst(Module &module) : Instruction(InstID::Stack) {
  type = module.getPtrType();
}

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
