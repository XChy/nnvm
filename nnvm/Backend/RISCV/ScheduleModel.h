#pragma once

#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"

namespace nnvm {
namespace riscv {

// The U7 execution unit is a dual-issue, in-order pipeline.
class ScheduleModel {
public:
private:
  uint issueWidth = 2;
};

} // namespace riscv
} // namespace nnvm
