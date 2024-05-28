#pragma once
#include "Backend/RISCV/LowIR.h"
namespace nnvm::riscv {

void loadConstantToReg(LowBB &bb, LowBB::Iterator it, LowOperand constant,
                       LowOperand reg);
void loadRegPlusConstantToReg(LowBB &bb, LowBB::Iterator it, LowOperand srcReg,
                              LowOperand constant, LowOperand destReg);

void loadGlobalToReg(LowBB &bb, LowBB::Iterator it, LowOperand global,
                     LowOperand reg);

class ISel {
public:
  void isel(LowFunc &func);
  LowBB::Iterator combine(LowFunc &func, LowBB &bb, LowBB::Iterator it);

  // Legalize constants, transform them to immediate or load them to registers.
  LowBB::Iterator handleConstant(LowFunc &func, LowBB &bb, LowBB::Iterator it);
};
} /* namespace nnvm::riscv */
