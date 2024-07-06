#include "Opt.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/CFGCombiner.h"
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
  passManager.run(*module);
}
