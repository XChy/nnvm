#pragma once

#include "Transform/Infra/Pass.h"
#include <memory>

namespace nnvm {
class PassManager {
public:
  bool run(Module &M) {
    bool changed = false;
    for (const auto &pass : passes)
      changed |= pass->run(M);
    return changed;
  }

  template <typename T> void registerModulePass() {
    passes.push_back(std::make_unique<ModulePass>(new T));
  }

  template <typename T> void registerFunctionPass() {
    passes.push_back(std::unique_ptr<ModulePass>(
        (ModulePass *)(new FunctionToModuleAdaptor(new T))));
  }

private:
  std::vector<std::unique_ptr<ModulePass>> passes;
};
} /* namespace nnvm */
