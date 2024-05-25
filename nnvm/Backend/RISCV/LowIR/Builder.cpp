#include "Backend/RISCV/LowIR/Builder.h"
#include <Backend/RISCV/LowIR.h>

using namespace nnvm::riscv;

LowInst &LowBuilder::buildInst(LowInstType type,
                               const std::vector<LowOperand> &operands) {
  return *BB->insertBefore(insertPoint, {type, operands});
}
