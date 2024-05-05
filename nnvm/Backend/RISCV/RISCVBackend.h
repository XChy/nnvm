#pragma once

#include "Backend/Backend.h"
#include "IR/Module.h"
#include <istream>
namespace nnvm {
namespace riscv {
class RISCVBackend final : public Backend {
public:
  void emit(Module &ir, std::ostream &assembly);
  ~RISCVBackend() = default;
};
} // namespace riscv
} // namespace nnvm
