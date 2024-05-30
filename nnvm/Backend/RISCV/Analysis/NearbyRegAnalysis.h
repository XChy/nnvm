#pragma once

#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {
class NearbyRegAnalysis {
public:
  NearbyRegAnalysis() {}
  NearbyRegAnalysis(LIRFunc &func, LIRBB &bb, LIRBB::Iterator current) {
    run(func, bb, current);
  }

  void run(LIRFunc &func, LIRBB &bb, LIRBB::Iterator current);

  std::vector<Register *> getFreeRegs() { return freeRegs; }

private:
  std::vector<Register *> freeRegs;
};
} /* namespace nnvm::riscv */
