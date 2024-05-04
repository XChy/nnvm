#pragma once

#include "Backend/Backend.h"
#include "IR/Module.h"
#include <istream>
namespace nnvm {
class RISCVBackend final : public Backend {
public:
  void emit(Module &ir, std::ostream &assembly);
  ~RISCVBackend() = default;
};
} // namespace nnvm
