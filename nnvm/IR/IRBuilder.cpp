#include "IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Module.h"
using namespace nnvm;

Value *IRBuilder::buildStack(Type *containedTy, const std::string &name) {
  return buildStack(containedTy, 1, name);
}

Value *IRBuilder::buildStack(Type *containedTy, uint numElement,
                             const std::string &name) {
  StackInst *SI =
      new StackInst(*module, containedTy->getStoredBytes() * numElement);
  SI->setName(name, *module);
  // We insert all stack instructions at the beginning of entry.
  getCurrentFunc()->getEntry()->begin().insertBefore(SI);
  return SI;
}

Value *IRBuilder::buildStore(Value *value, Value *dest) {
  nnvm_assert(dest->getType() == module->getPtrType() &&
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
  LI->setName(name, *module);
  insertPoint.insertBefore(LI);
  return LI;
}

PhiInst *IRBuilder::buildPhi(Type *type, const std::string &name) {
  PhiInst *I = new PhiInst(type);
  I->setName(name, *module);
  BasicBlock *curBB = insertPoint.getBB();
  curBB->begin().insertBefore(I);
  return I;
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

Value *IRBuilder::buildUnreachable() {
  UnreachableInst *I = new UnreachableInst();
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

Value *IRBuilder::buildCall(Function *callee, const std::vector<Value *> &args,
                            const std::string &name) {
  CallInst *I = new CallInst(callee);
  I->setName(name, *module);
  I->setArguments(args);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildICmp(ICmpInst::Predicate pred, Value *lhs, Value *rhs,
                            const std::string &name) {
  ICmpInst *I = new ICmpInst(pred, module->getBoolType());
  I->setName(name, *module);
  I->setOperand(0, lhs);
  I->setOperand(1, rhs);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildICmpNEZero(Value *lhs, const std::string &name) {
  return buildICmp(ICmpInst::NE, lhs, getZero(lhs->getType()));
}

Value *IRBuilder::buildFCmp(FCmpInst::Predicate pred, Value *lhs, Value *rhs,
                            const std::string &name) {
  FCmpInst *I = new FCmpInst(pred, module->getBoolType());
  I->setName(name, *module);
  I->setOperand(0, lhs);
  I->setOperand(1, rhs);
  insertPoint.insertBefore(I);
  return I;
}

Value *IRBuilder::buildZExt(Value *operand, Type *toType,
                            const std::string &name) {
  return buildCast<ZExtInst>(operand, toType, name);
}

Value *IRBuilder::buildSExt(Value *operand, Type *toType,
                            const std::string &name) {
  return buildCast<SExtInst>(operand, toType, name);
}
