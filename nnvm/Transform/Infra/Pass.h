#pragma once

#include "IR/Function.h"
#include "IR/Module.h"
#include <memory>
namespace nnvm {

//#define OPEN_OPT_DEBUG_INFO

#if defined(OPEN_OPT_DEBUG_INFO)
#define opt_debug(A)                                                           \
  do {                                                                         \
    A;                                                                         \
  } while (0);
#else
#define opt_debug(A)
#endif

class ModulePass {
public:
  // Return true if changed, otherwise return false.
  virtual bool run(Module &module) { return false; }

  template <typename T> T *getAnalysis(Function &F) {
    T *analysis = new T();
    analysisDepent.push_back(analysis);
    analysis->run(F);
    return analysis;
  }

  virtual const char *getName() { return "default"; }

  virtual ~ModulePass() {
    for (auto *analysis : analysisDepent)
      delete analysis;
  }

private:
  std::vector<ModulePass *> analysisDepent;
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

  const char *getName() { return SpecificFuncPass::passName; }
};

} /* namespace nnvm */
