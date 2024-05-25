#pragma once

#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {

class RegisterAllocator {
public:
  virtual void allocate(LowFunc &func) { nnvm_unreachable("Not implemented") }
};

} /* namespace nnvm::riscv */
