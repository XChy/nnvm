#pragma once

#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {
class StackAllocator {
public:
  void allocate(LowFunc &func);
  void emitPrologue(LowFunc &func);
  void emitEpilogue(LowFunc &func);


private:
  LowFunc *func;
  uint64_t frameSize;
};
} /* namespace nnvm::riscv */
