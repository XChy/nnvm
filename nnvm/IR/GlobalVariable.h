#pragma once

#include "IR/Value.h"

namespace nnvm {

class GlobalVariable : public Value {
public:
  GlobalVariable();
  virtual ~GlobalVariable() {}

private:
};

} // namespace nnvm
