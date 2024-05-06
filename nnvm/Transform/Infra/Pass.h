#pragma once

#include "IR/Function.h"
#include "IR/Module.h"
#include <memory>
namespace nnvm {

class ModulePass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Module &module);
};

class FunctionPass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Function &f);
};

class FunctionToModuleAdaptor : public ModulePass {
public:
  FunctionToModuleAdaptor(std::unique_ptr<FunctionPass> &&funcPass) {}

private:
  std::unique_ptr<FunctionPass> functionPass;
};

} /* namespace nnvm */
