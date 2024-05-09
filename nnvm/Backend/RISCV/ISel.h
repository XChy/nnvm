#pragma once
#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {
class ISel {
public:
  void isel(LowFunc &func);
  LowBB::Iterator combine(LowFunc &func, LowBB &bb, LowBB::Iterator it);
};
} /* namespace nnvm::riscv */
