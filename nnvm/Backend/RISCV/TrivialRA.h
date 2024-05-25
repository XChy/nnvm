#pragma once
#include "Backend/RISCV/RegisterAllocator.h"
#include "Backend/RISCV/Spiller.h"
namespace nnvm::riscv {
class TrivialRA final : public RegisterAllocator {
public:
  void allocate(LowFunc &func) override;

private:
  Spiller spiller;
};
} /* namespace nnvm::riscv */
