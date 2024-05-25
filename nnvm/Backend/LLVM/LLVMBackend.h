#pragma once

#include "Backend/Backend.h"
#include "IR/Module.h"
#include <unordered_map>

namespace nnvm::llvm {
class LLVMBackend final : public Backend {
public:
  void emit(Module &ir, std::ostream &out);
  void emit(Instruction *I, std::ostream &out);

private:
  std::unordered_map<Value *, std::string> valueToName;
};
} // namespace nnvm::llvm
