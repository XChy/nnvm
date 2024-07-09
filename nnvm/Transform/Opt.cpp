#include "Opt.h"
#include "Transform/IPO/Inliner.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/CFGCombiner.h"
#include "Transform/Scalar/CSE.h"
#include "Transform/Scalar/Combiner.h"
#include "Transform/Scalar/Mem2Reg.h"
#include "Transform/Scalar/SLPairElim.h"
using namespace nnvm;

void Optimizer::transform(Module *module) {
  PassManager passManager;
  passManager.addFunctionPass<Mem2RegPass>();
  passManager.addFunctionPass<SLPairElimPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<SLPairElimPass>();

  // After inlining:
  passManager.addModulePass<InlinerPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.run(*module);
}
