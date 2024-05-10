#pragma once

#include "Backend/Backend.h"
#include "IR/Module.h"

namespace nnvm::llvm {
class LLVMBackend final : public Backend {
public:
  void emit(Module &ir, std::ostream &assembly);
};
} // namespace nnvm::llvm
