#pragma once

#include "IR/Module.h"
#include <ostream>
namespace nnvm {
class Backend {
public:
  virtual void emit(Module &ir, std::ostream &assembly) {
    nnvm_unreachable("This target don't have a backend!!");
  }

  virtual ~Backend() = default;
};
} // namespace nnvm
