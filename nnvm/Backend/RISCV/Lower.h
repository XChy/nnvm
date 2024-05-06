#pragma once
#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"
namespace nnvm::riscv {

void lower(Module &module, LowModule &lowered);

} /* namespace nnvm::riscv */
