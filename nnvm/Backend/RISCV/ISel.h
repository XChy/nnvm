
#pragma once
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
namespace nnvm::riscv {

void loadGlobalToReg(LIRBuilder &builder, LIRGlobalVar *global, Register *reg);

class ISel {
public:
  void isel(LIRFunc &func);

  /**
   * Replace all MIR instructions with LIR instructions. This step should
   * involve some basic optimizations. Make sure lowering to cheap instructions.
   * @param builder the builder used to create new instructions
   * @param I the instruction we want to replace with
   */
  LIRInst *combine(LIRBuilder &builder, LIRInst *I);

  LIRInst *expand(LIRBuilder &builder, LIRInst *I);
  LIRInst *expandSDiv(LIRBuilder &builder, LIRInst *I);

  /**
   * Legalize constants, transform them to immediate or load them to registers.
   * Legalize globals, load the addresses of the globals into a register.
   * @param builder the builder used to create new instructions
   * @param I the instruction we want to legalize
   */
  LIRInst *legalizeOperands(LIRBuilder &builder, LIRInst *I);
};

} /* namespace nnvm::riscv */
