#pragma once

#include "ADT/List.h"
#include "IR/BasicBlock.h"
#include "IR/Type.h"
#include "IR/Value.h"

namespace nnvm {
class Function final : public Value {
public:
  Function();
  ~Function();

  void insert(BasicBlock *BB);

  void setReturnType(Type *retType) { this->retType = retType; }
  Type *getReturnType() { return retType; }

  std::string dump();

private:
  List<BasicBlock> BBList;

  std::vector<Argument> arguments;
  Type *retType;
};
} // namespace nnvm
