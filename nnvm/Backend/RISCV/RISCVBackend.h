#pragma once

#include "Backend/Backend.h"
#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"

namespace nnvm {
namespace riscv {

class RISCVBackend final : public Backend {
public:

  /**
   * Emit RISCV-64 assembly into the output stream.
   * @param ir a MIR module we need to lower.
   * @param assembly the output stream
   */
  void emit(Module &ir, std::ostream &assembly);

  ~RISCVBackend() = default;
};

} // namespace riscv
} // namespace nnvm
