#pragma once

#include "Backend/Backend.h"
#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"

namespace nnvm {
namespace riscv {
class RISCVBackend final : public Backend {
public:
  void emit(Module &ir, std::ostream &assembly);
  void legalize(LowModule &module);
  ~RISCVBackend() = default;
};
} // namespace riscv
} // namespace nnvm
