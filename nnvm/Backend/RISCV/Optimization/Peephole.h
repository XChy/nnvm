#pragma once
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
namespace nnvm::riscv {

class Peephole {
public:
  bool run(LIRFunc &func);

private:
  bool removeDeadInst(LIRBB *block);
};

} /* namespace nnvm::riscv */
