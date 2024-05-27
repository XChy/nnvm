#include "Backend/RISCV/LowIR.h"

namespace nnvm::riscv {
static void printDefUse(LowFunc &func) {
  EmitInfo info;
  info.setShowLine(true);

  for (LowBB *bb : func.BBs)
    info.allocBB(bb);

  uint index = 0;
  for (LowBB *bb : func.BBs) {
    for (LowInst inst : *bb) {
      std::cerr << index << ": ";
      inst.emit(std::cerr, info);
      for (LowOperand operand : inst.operand) {
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
