#include "Opt.h"
#include "Transform/BeforeCodegen/GlobalHoist.h"
#include "Transform/BeforeCodegen/WhichExpand.h"
#include "Transform/IPO/GlobalAttributor.h"
#include "Transform/IPO/GlobalVarOpt.h"
#include "Transform/IPO/Inliner.h"
#include "Transform/IPO/UselessFuncElim.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/CFGCombiner.h"
#include "Transform/Scalar/CSE.h"
#include "Transform/Scalar/Combiner.h"
#include "Transform/Scalar/GVN.h"
#include "Transform/Scalar/LinearizePtrAdd.h"
#include "Transform/Scalar/Loop/LICM.h"
#include "Transform/Scalar/Loop/LoopCanon.h"
#include "Transform/Scalar/Loop/LoopLoadStorePair.h"
#include "Transform/Scalar/Loop/Rotate.h"
#include "Transform/Scalar/Loop/StaticUnroll.h"
#include "Transform/Scalar/Memory/DeadStoreElim.h"
#include "Transform/Scalar/Memory/Mem2Reg.h"
#include "Transform/Scalar/Memory/MemProp.h"
#include "Transform/Scalar/Memory/SLPairElim.h"
#include "Transform/Scalar/StackElim.h"
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
  passManager.addFunctionPass<LinearizePtrAddPass>();
  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<GVNHoistPass>();
  passManager.addFunctionPass<MemPropPass>();

  passManager.addModulePass<GlobalVarOptPass>();

  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<RotatePass>();
  passManager.addFunctionPass<LoopCanonPass>();
  passManager.addFunctionPass<LICMPass>();

  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();

  passManager.addFunctionPass<StaticUnrollPass>();
  passManager.addFunctionPass<LoopCanonPass>();
  passManager.addFunctionPass<LoopLoadStorePairPass>();

  passManager.addFunctionPass<CombinerPass>();
  passManager.addFunctionPass<CFGCombinerPass>();
  passManager.addFunctionPass<CSEPass>();

  passManager.addFunctionPass<MemPropPass>();
  passManager.addFunctionPass<DeadStoreElimPass>();
  passManager.addFunctionPass<StackElimPass>();
  passManager.addFunctionPass<CombinerPass>();

  // Before codegen
  passManager.addFunctionPass<GlobalHoistPass>();
  passManager.addFunctionPass<CSEPass>();
  passManager.addFunctionPass<WhichExpandPass>();

  passManager.run(*module);
}
