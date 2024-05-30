#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Utils/Debug.h"

namespace nnvm::riscv {

class RegisterAllocator {
public:
  virtual void allocate(LIRFunc &func) { nnvm_unimpl() }
};

} /* namespace nnvm::riscv */
