#pragma once

#include "IR/Attributes.h"
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

  bool isAttached(Attribute attr) const { return attributes.count(attr); }
  void attach(Attribute attr) { attributes.insert(attr); }
  void removeAttr(Attribute attr) { attributes.erase(attr); }

private:
  Constant *initVal;
  Type *innerType;
  AttributeSet attributes;
  Module &module;
};

} // namespace nnvm
