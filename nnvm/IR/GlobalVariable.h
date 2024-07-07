#pragma once

#include "IR/Constant.h"
#include "IR/Value.h"

namespace nnvm {

class GlobalVariable : public Value {
public:
  GlobalVariable(Module &module, Type *innerType);
  GlobalVariable(Module &module, Constant *initVal);

  std::string dump() override;
  std::string dumpAsOperand() override;

  void setName(const std::string &name);

  void setInitVal(Constant *initVal) { this->initVal = initVal; }
  Constant *getInitVal() { return initVal; }

  void setInnerType(Type *innerType) { this->innerType = innerType; }
  Type *getInnerType() { return innerType; }

  void setImmutable(bool immutable) { this->immutable = immutable; }
  bool isImmutable() const { return immutable; }

private:
  Constant *initVal;
  Type *innerType;
  bool immutable;
  Module &module;
};

} // namespace nnvm
