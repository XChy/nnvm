#pragma once

#include "Transform/Infra/Pass.h"
#include <memory>

namespace nnvm {
class PassManager {
public:
  bool run(Module &M) {
    bool changed = false;
    for (const auto &pass : passes) {
      opt_debug(std::cerr << "====== Before running " << pass->getName() << " ======\n\n");
      opt_debug(std::cerr << M.dump());
      changed |= pass->run(M);
    }
    return changed;
  }

  template <typename T> void addModulePass() {
    passes.emplace_back(std::unique_ptr<ModulePass>(new T));
  }

  template <typename T> void addFunctionPass() {
    passes.emplace_back(
        std::unique_ptr<ModulePass>(new FunctionToModuleAdaptor<T>()));
  }

private:
  std::vector<std::unique_ptr<ModulePass>> passes;
};
} /* namespace nnvm */
