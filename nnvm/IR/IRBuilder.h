#pragma once

#include "ADT/List.h"
#include "IR/BasicBlock.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "IR/Module.h"
#include "IR/Value.h"
#include "Utils/Debug.h"
#include <vector>
namespace nnvm {
class IRBuilder {
public:
  IRBuilder() {}
  IRBuilder(Module *module) : module(module) {}
  void setModule(Module *module) { this->module = module; }

  void insertAt(BasicBlock::Iterator insertPoint) {
    this->insertPoint = insertPoint;
    this->module = insertPoint.getBB()->getParent()->getModule();
  }

  void insertAt(Instruction *insertPoint) {
    this->insertPoint =
        BasicBlock::Iterator(insertPoint, insertPoint->getBlock());
    this->module = insertPoint->getBlock()->getParent()->getModule();
  }

  BasicBlock::Iterator getInsertPoint() const { return insertPoint; }
  BasicBlock *getCurrentBB() { return getInsertPoint().getBB(); }
  Function *getCurrentFunc() { return getCurrentBB()->getParent(); }

  template <typename Inst>
  Value *buildBinOp(Value *LHS, Value *RHS, Type *type,
                    const std::string &name = "") {
    // TODO: specification assert
    Inst *I = new Inst(LHS, RHS, type);
    I->setName(name, *module);
    insertPoint.insertBefore(I);
    return I;
  }

  template <typename Inst>
  Value *buildUnaryOp(Value *operand, Type *type,
                      const std::string &name = "") {
    Inst *I = new Inst(operand, type);
    I->setName(name, *module);
    insertPoint.insertBefore(I);
    return I;
  }

  Value *buildFNeg(Value *operand, const std::string &name = "") {
    FNegInst *I = new FNegInst(operand);
    I->setName(name, *module);
    insertPoint.insertBefore(I);
    return I;
  }

  Value *buildStack(Type *containedTy, const std::string &name = "");
  Value *buildStack(Type *containedTy, uint numElement,
                    const std::string &name = "");

  Value *buildStore(Value *value, Value *dest);
  Value *buildLoad(Value *src, Type *loadedTy, const std::string &name = "");

  PhiNode *buildPhi(Type *type, const std::string &name = "");
  Value *buildPin(Value *orig, const std::string &name = "");

  Value *buildRet();
  Value *buildRet(Value *returned);

  Value *buildUnreachable();

  Value *buildBr(BasicBlock *succ);
  Value *buildBr(Value *cond, BasicBlock *trueBB, BasicBlock *falseBB);

  Value *buildCall(Function *callee, const std::vector<Value *> &args,
                   const std::string &name = "");

  Value *buildICmp(ICmpInst::Predicate pred, Value *lhs, Value *rhs,
                   const std::string &name = "");
  Value *buildICmpNEZero(Value *lhs, const std::string &name = "");

  Value *buildFCmp(FCmpInst::Predicate pred, Value *lhs, Value *rhs,
                   const std::string &name = "");

  template <typename Inst>
  Value *buildCast(Value *operand, Type *toType, const std::string &name = "") {
    Inst *I = new Inst(operand, toType);
    I->setName(name, *module);
    I->setOperand(0, operand);
    insertPoint.insertBefore(I);
    return I;
  }

  Value *buildZExt(Value *operand, Type *toType, const std::string &name = "");
  Value *buildSExt(Value *operand, Type *toType, const std::string &name = "");

  Constant *getZero(Type *type) {
    if (type->isInteger())
      return ConstantInt::create(*module, type, 0);
    if (type->isFloat())
      return ConstantFloat::create(*module, 0.0);
    nnvm_unimpl();
  }

  Constant *getOne(Type *type) {
    if (type->isInteger())
      return ConstantInt::create(*module, type, 1);
    nnvm_unimpl();
  }

  Constant *getConstantInt(Type *type, GInt value) {
    return ConstantInt::create(*module, type, value);
  }

private:
  BasicBlock::Iterator insertPoint;
  Module *module;
};
} // namespace nnvm
