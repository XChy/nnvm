#include "IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Module.h"
using namespace nnvm;

Value *IRBuilder::buildInst(InstID opcode, const std::vector<Value *> &operands,
                            Type *type) {
  Instruction *I = new Instruction(opcode, operands, type);
  I->setType(type);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildStack(Type *containedTy, const std::string &name) {
  return buildStack(containedTy, 1, name);
}

Value *IRBuilder::buildStack(Type *containedTy, uint numElement,
                             const std::string &name) {
  StackInst *SI =
      new StackInst(*module, containedTy->getStoredBytes() * numElement);
  SI->setName(name);
  // We insert all stack instructions at the beginning of entry.
  getCurrentFunc()->getEntry()->begin().insertBefore(SI);
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

  LoadInst *LI = new LoadInst(loadedTy);
  LI->setOperand(0, src);
  LI->setType(loadedTy);
  LI->setName(name);
  insertPoint.insertBefore(LI);
  return LI;
}

Value *IRBuilder::buildRet() {
  RetInst *I = new RetInst();
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildRet(Value *returned) {
  RetInst *I = new RetInst(returned);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildBr(BasicBlock *succ) {
  BranchInst *I = new BranchInst(succ);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildBr(Value *cond, BasicBlock *trueBB,
                          BasicBlock *falseBB) {
  BranchInst *I = new BranchInst(cond, trueBB, falseBB);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildCall(Function *callee,
                            const std::vector<Value *> &args) {
  CallInst *I = new CallInst(callee);
  I->setArguments(args);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildICmp(ICmpInst::Predicate pred, Value *lhs, Value *rhs) {
  ICmpInst *I = new ICmpInst(pred, module->getBoolType());
  I->setOperand(0, lhs);
  I->setOperand(1, rhs);
  insertPoint.insertBefore(I);
  return I;
}
