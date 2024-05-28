#pragma once

#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {
class NearbyRegAnalysis {
public:
  NearbyRegAnalysis() {}
  NearbyRegAnalysis(LowFunc &func, LowBB &bb, LowBB::Iterator current) {
    run(func, bb, current);
  }

  void run(LowFunc &func, LowBB &bb, LowBB::Iterator current);

  std::vector<uint64_t> getFreeRegs() { return freeRegs; }

private:
  std::vector<uint64_t> freeRegs;
};
} /* namespace nnvm::riscv */
