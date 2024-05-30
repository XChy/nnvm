#include "Backend/RISCV/LowIR.h"

namespace nnvm::riscv {
static void printDefUse(LIRFunc &func) {
  EmitInfo info;
  info.setShowLine(true);

  for (LIRBB *bb : func)
    info.allocBB(bb);

  uint index = 0;
  for (LIRBB *bb : func) {
    for (LIRInst *inst : *bb) {
      std::cerr << index << ": ";
      inst->emit(std::cerr, info);
      for (const LowOperand &operand : inst->operands) {
        if (operand.isDef())
          std::cerr << " [def]";
        if (operand.isUse())
          std::cerr << " [use]";
      }
      std::cerr << "\n";
      index++;
    }
  }
}
} /* namespace nnvm::riscv */
