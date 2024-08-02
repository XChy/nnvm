#include "Opt.h"
#include "Transform/BeforeCodegen/GlobalHoist.h"
#include "Transform/IPO/GlobalAttributor.h"
#include "Transform/IPO/GlobalVarOpt.h"
#include "Transform/IPO/Inliner.h"
#include "Transform/IPO/UselessFuncElim.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/CFGCombiner.h"
#include "Transform/Scalar/CSE.h"
#include "Transform/Scalar/Combiner.h"
#include "Transform/Scalar/Loop/LICM.h"
#include "Transform/Scalar/Loop/LoopCanon.h"
#include "Transform/Scalar/Loop/Rotate.h"
#include "Transform/Scalar/Loop/StaticUnroll.h"
#include "Transform/Scalar/Mem2Reg.h"
#include "Transform/Scalar/MemProp.h"
#include "Transform/Scalar/SLPairElim.h"
#include "Transform/Scalar/TailElim.h"
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
  passManager.addFunctionPass<TailElimPass>();
  passManager.addModulePass<InlinerPass>();
  passManager.addModulePass<UselessFuncElimPass>();

  // After inlining:
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<MemPropPass>();

  passManager.addModulePass<GlobalVarOptPass>();

  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<RotatePass>();
  passManager.addFunctionPass<LoopCanonPass>();
  passManager.addFunctionPass<LICMPass>();

  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();

  passManager.addFunctionPass<StaticUnrollPass>();

  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CSEPass>();

  // Before codegen
  // passManager.addFunctionPass<GlobalHoistPass>();

  passManager.run(*module);
}
