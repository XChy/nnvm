
#pragma once
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
namespace nnvm::riscv {

class CodeLayoutOpt {
public:
  void layout(LIRFunc &func);
};

} /* namespace nnvm::riscv */
