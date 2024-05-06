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

  Value *buildInst(InstID opcode, const std::vector<Value *> &operands,
                   Type *type);

  Value *buildStack(Type *containedTy, const std::string &name = "");
  Value *buildStore(Value *value, Value *dest);
  Value *buildLoad(Value *src, Type *loadedTy, const std::string &name = "");
  Value *buildRet(Value *returned);

private:
  BasicBlock::Iterator insertPoint;
  Module *module;
};
} // namespace nnvm
