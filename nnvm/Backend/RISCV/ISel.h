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

  /**
   * Replace all MIR instructions with LIR instructions. This step should
   * involve some basic optimizations. Make sure lowering to cheap instructions.
   * @param func the function worked on
   * @param bb the basic block worked on
   * @param it the iterator of current instruction
   */
  LowBB::Iterator combine(LowFunc &func, LowBB &bb, LowBB::Iterator it);

  /**
   * Legalize constants, transform them to immediate or load them to registers.
   * Legalize globals, load the addresses of the globals into a register.
   * @param func the function worked on
   * @param bb the basic block worked on
   * @param it the iterator of current instruction
   */
  LowBB::Iterator legalizeOperands(LowFunc &func, LowBB &bb,
                                   LowBB::Iterator it);
};
} /* namespace nnvm::riscv */
