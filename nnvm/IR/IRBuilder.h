#pragma once

#include "ADT/List.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include <vector>
namespace nnvm {
class IRBuilder {
public:
  IRBuilder() {}
  IRBuilder(Module *module) : module(module) {}
  void setModule(Module *module) { this->module = module; }

  void setInsertPoint(BasicBlock::Iterator insertPoint) {
    this->insertPoint = insertPoint;
  }

  BasicBlock::Iterator getInsertPoint() const { return insertPoint; }
  BasicBlock *getCurrentBB() { return getInsertPoint().getBB(); }
  Function *getCurrentFunc() { return getCurrentBB()->getParent(); }

  Value *buildInst(InstID opcode, const std::vector<Value *> &operands,
                   Type *type);

  template <typename Inst>
  Value *buildBinOp(Value *LHS, Value *RHS, Type *type,
                    const std::string &name = "") {
    Inst *I = new Inst(LHS, RHS, type);
    I->setName(name);
    insertPoint.insertBefore(I);
    return I;
  }

  Value *buildStack(Type *containedTy, const std::string &name = "");
  Value *buildStack(Type *containedTy, uint numElement,
                    const std::string &name = "");

  Value *buildStore(Value *value, Value *dest);
  Value *buildLoad(Value *src, Type *loadedTy, const std::string &name = "");

  Value *buildRet();
  Value *buildRet(Value *returned);

  Value *buildBr(BasicBlock *succ);
  Value *buildBr(Value *cond, BasicBlock *trueBB, BasicBlock *falseBB);

  Value *buildCall(Function *callee, const std::vector<Value *> &args);

  Value *buildICmp(ICmpInst::Predicate pred, Value *lhs, Value *rhs);

private:
  BasicBlock::Iterator insertPoint;
  Module *module;
};
} // namespace nnvm
