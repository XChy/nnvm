#pragma once

#include "IR/Value.h"

namespace nnvm {

class Constant : public Value {
public:
  Constant();
  virtual ~Constant() {}

private:
};

} // namespace nnvm
