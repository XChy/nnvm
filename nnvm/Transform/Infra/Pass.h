#pragma once

#include "IR/Function.h"
#include "IR/Module.h"
#include <memory>
namespace nnvm {

class ModulePass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Module &module) { return false; }
};

class FunctionPass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Function &f);
};

class FunctionToModuleAdaptor : public ModulePass {
public:
  FunctionToModuleAdaptor(std::unique_ptr<FunctionPass> &&funcPass) {}
  bool run(Module &module) {
    bool changed = false;
    for (auto [name, F] : module.getFunctionMap())
      changed |= functionPass->run(*F);
    return changed;
  }

private:
  std::unique_ptr<FunctionPass> functionPass;
};

} /* namespace nnvm */
