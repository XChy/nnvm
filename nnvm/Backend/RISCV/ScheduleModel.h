#pragma once

#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"
#include <map>

namespace nnvm {
namespace riscv {

// The U7 execution unit is a dual-issue, in-order pipeline.
class ScheduleModel {
public:
  enum ScheduleConstraint { MMU, FPU, MulOrDiv };

private:
  uint issueWidth = 2;
  std::set<ScheduleConstraint> constraints;
};

} // namespace riscv
} // namespace nnvm
