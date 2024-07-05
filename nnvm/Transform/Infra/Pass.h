#pragma once

#include "IR/Function.h"
#include "IR/Module.h"
#include <memory>
namespace nnvm {

class ModulePass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Module &module) { return false; }
  virtual ~ModulePass() {}
};

class FunctionPass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Function &F) { return false; }

  template <typename T> T *getAnalysis(Function &F) {
    T *analysis = new T();
    analysisDepent.push_back(analysis);
    analysis->run(F);
    return analysis;
  }

  virtual ~FunctionPass() {
    for (auto *analysis : analysisDepent)
      delete analysis;
  }

private:
  std::vector<FunctionPass *> analysisDepent;
};

template <typename SpecificFuncPass>
class FunctionToModuleAdaptor : public ModulePass {
public:
  FunctionToModuleAdaptor() {}
  bool run(Module &module) {
    bool changed = false;
    for (auto [name, F] : module.getFunctionMap()) {
      if (F->isExternal())
        continue;
      SpecificFuncPass pass;
      changed |= pass.run(*F);
    }
    return changed;
  }
};

} /* namespace nnvm */
