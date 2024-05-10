#include <Backend/LLVM/LLVMBackend.h>
#include <string>
#include <unordered_map>

using namespace nnvm::llvm;

void LLVMBackend::emit(Module &ir, std::ostream &out) {
  std::unordered_map<Value *, std::string> valueToName;
  uint64_t localValueIndex = 0;
  auto allocName = [&localValueIndex]() {
    return std::to_string(localValueIndex++);
  };

  // Mapping
  for (auto &[name, var] : ir.getGlobalVarMap()) {
    valueToName[var] = name;
    // TODO: initializer?
    out << "@" << name << " = global " << var->getType()->dump();
  }

  for (auto &[name, func] : ir.getFunctionMap()) {
    valueToName[func] = name;
    for (auto *arg : func->getArguments())
      valueToName[arg] = allocName();
    for (auto *BB : *func) {
      valueToName[BB] = allocName();
      for (auto *I : *BB)
        valueToName[I] = allocName();
    }
  }

  // Transforming
}
