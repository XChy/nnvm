#pragma once
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
namespace nnvm::riscv {

class SSAPeephole {
public:
  bool run(LIRFunc &func);
};

} /* namespace nnvm::riscv */
