#include "IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Module.h"
using namespace nnvm;

Value *IRBuilder::buildInst(InstID opcode, const std::vector<Value *> &operands,
                            Type *type) {
  Instruction *I = new Instruction(opcode, operands);
  I->setType(type);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildStack(Type *containedTy, const std::string &name) {
  StackInst *SI = new StackInst(*module, containedTy->getStoredBytes());
  SI->setName(name);
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

Value *IRBuilder::buildLoad(Value *src, Type *loadedTy,
                            const std::string &name) {
  assert(src->getType() == module->getPtrType() && "Source must be a pointer");

  LoadInst *LI = new LoadInst;
  LI->setOperand(0, src);
  LI->setType(loadedTy);
  LI->setName(name);
  insertPoint.insertBefore(LI);
  return LI;
}
