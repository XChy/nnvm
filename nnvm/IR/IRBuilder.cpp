#include "IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Module.h"
using namespace nnvm;

Value *IRBuilder::buildInst(InstID opcode,
                            const std::vector<Value *> &operands) {
  Instruction *I = new Instruction(opcode, operands);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildStack(Type *containedTy) {
  StackInst *SI = new StackInst(*module, containedTy->getStoredBytes());
  insertPoint.insertBefore(SI);
  return SI;
}

Value *IRBuilder::buildStore(Value *value, Value *dest) {
  assert(dest->getType() == module->getPtrType() &&
         "Destination must be a pointer");
  StoreInst *SI = new StoreInst();
  SI->setOperand(0, value);
  SI->setOperand(1, dest);
  insertPoint.insertBefore(SI);
  return SI;
}
