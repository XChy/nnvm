#pragma once

#include "IR/Module.h"
namespace nnvm {
class Optimizer {
public:
  void transform(Module *module);
};
} // namespace nnvm
