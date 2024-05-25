#pragma once

#include "Transform/Infra/Pass.h"
#include <memory>

namespace nnvm {
class PassManager {
public:
  template <typename T> void registerModulePass() { passes.push_back(new T); }

private:
  std::vector<std::unique_ptr<ModulePass>> passes;
};
} /* namespace nnvm */
