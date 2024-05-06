#pragma once

#include "Backend/RISCV/RegisterAllocator.h"
namespace nnvm::riscv {

class LinearScanRA : public RegisterAllocator {
public:
  virtual void allocate(LowFunc &func) = delete;
};

} /* namespace nnvm::riscv */
