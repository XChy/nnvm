#include "Backend/RISCV/LowIR.h"
#include <unordered_map>

namespace nnvm::riscv {
static inline void
printDefUse(LIRFunc &func, std::unordered_map<LIRBB *, uint64_t> &BBNumber) {
  EmitInfo info;
  info.setShowLine(true);

  for (LIRBB *bb : func)
    info.allocBB(bb);

  for (LIRBB *bb : func) {
    std::cerr << "bb" << info.indexOf(bb) << ":\n";
    uint64_t localIndex = 0;
    for (LIRInst *inst : *bb) {
      std::cerr << BBNumber[bb] + localIndex << ": ";
      inst->emit(std::cerr, info);
      for (const LowOperand &operand : inst->operands) {
        if (operand.isDef())
          std::cerr << " [def]";
        if (operand.isUse())
          std::cerr << " [use]";
      }
      std::cerr << "\n";
      localIndex++;
    }
  }
}
} /* namespace nnvm::riscv */
