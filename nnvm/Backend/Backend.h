#pragma once

#include "IR/Module.h"
#include <ostream>
namespace nnvm {
class Backend {
public:
  virtual void emit(Module &ir, std::ostream &assembly) {
    nnvm_unreachable("No default backend!!");
  }

  virtual ~Backend() = default;
};
} // namespace nnvm
