#include "Opt.h"
#include "Transform/Infra/PassManager.h"
#include "Transform/Scalar/Combiner.h"
#include "Transform/Scalar/Mem2Reg.h"
using namespace nnvm;

void Optimizer::transform(Module *module) {
  PassManager passManager;
  passManager.registerFunctionPass<Mem2RegPass>();
  passManager.registerFunctionPass<CombinerPass>();
  passManager.run(*module);
}
