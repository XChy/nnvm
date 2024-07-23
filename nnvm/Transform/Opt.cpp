#include "Opt.h"
#include "Transform/IPO/GlobalAttributor.h"
#include "Transform/IPO/Inliner.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/CFGCombiner.h"
#include "Transform/Scalar/CSE.h"
#include "Transform/Scalar/Combiner.h"
#include "Transform/Scalar/Loop/LICM.h"
#include "Transform/Scalar/Loop/Rotate.h"
#include "Transform/Scalar/Mem2Reg.h"
#include "Transform/Scalar/MemProp.h"
#include "Transform/Scalar/SLPairElim.h"
using namespace nnvm;

void Optimizer::transform(Module *module) {
  PassManager passManager;
  // Before inlining.
  passManager.addFunctionPass<Mem2RegPass>();
  passManager.addFunctionPass<SLPairElimPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addModulePass<GlobalAttributorPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<SLPairElimPass>();

  // Inline, increasing codesize massively.
  passManager.addModulePass<InlinerPass>();

  // After inlining:
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<MemPropPass>();
  passManager.addFunctionPass<CSEPass>();
  //passManager.addFunctionPass<RotatePass>();
  passManager.addFunctionPass<LICMPass>();
  passManager.run(*module);
}
