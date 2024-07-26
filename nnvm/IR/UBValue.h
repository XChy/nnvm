#pragma once
#include "Value.h"
#include <unordered_map>

namespace nnvm {

class UBValue : public Value {
public:
  static UBValue *create(Type *type);
  std::string dump() { return "ub"; }
  std::string dumpAsOperand() { return type->dump() + " ub"; }

  static std::vector<UBValue *> allUBValues();

  Value *refineDefault(Module& M);

private:
  UBValue(Type *type) : Value(ValueID::UBValue, type) {}
};

} /* namespace nnvm */
