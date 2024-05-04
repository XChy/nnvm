#pragma once

#include "IR/Value.h"

namespace nnvm {

class GlobalVariable : public Value {
public:
  GlobalVariable() : Value(ValueID::GlobalVariable) {}

private:
  Value *initVal;
};

} // namespace nnvm
