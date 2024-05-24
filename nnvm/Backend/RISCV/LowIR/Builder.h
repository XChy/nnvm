#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <vector>
namespace nnvm::riscv {
class LowBuilder {
public:
  LowBuilder(LowBB *BB, LowBB::Iterator insertPointer)
      : BB(BB), insertPoint(insertPointer) {}

  LowInst &buildInst(LowInstType type, const std::vector<LowOperand> &operands);

private:
  LowBB *BB;
  LowBB::Iterator insertPoint;
};
} /* namespace nnvm::riscv */
