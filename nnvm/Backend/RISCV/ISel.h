#pragma once
#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {
class ISel {
public:
  void isel(LowFunc &func);
};
} /* namespace nnvm::riscv */
