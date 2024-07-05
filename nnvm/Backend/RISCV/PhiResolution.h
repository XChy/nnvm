#pragma once

#include "Backend/RISCV/LowIR.h"
#include <stdio.h>

namespace nnvm::riscv {

class PhiResolution {
public:
  void resolve(LIRFunc &func);

private:
  void processBB(LIRBB *BB);
};

} /* namespace nnvm::riscv */
