#pragma once
#include "Backend/RISCV/RegisterAllocator.h"
namespace nnvm::riscv {
class TrivialRA final : public RegisterAllocator {
public:
  void allocate(LowFunc &func) override;
};
} /* namespace nnvm::riscv */
