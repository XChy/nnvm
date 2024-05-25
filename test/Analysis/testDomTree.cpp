#include "Analysis/DomTreeAnalysis.h"
using namespace nnvm;
#include "Backend/RISCV/RISCVBackend.h"
#include "IR/BasicBlock.h"
#include "IR/Function.h"
#include "IR/Module.h"
#include <IR/IRBuilder.h>

int main() {

  Module module;
  nnvm::IRBuilder builder(&module);
  Function *FA = new Function(&module, "A");
  DomTreeAnalysis DT;

  BasicBlock *BB1 = new BasicBlock(FA, "entry");
  BasicBlock *BB2 = new BasicBlock(FA, "true");
  BasicBlock *BB3 = new BasicBlock(FA, "false");
  BasicBlock *BBexit = new BasicBlock(FA, "exit");

  FA->setName("A");
  FA->setReturnType(module.getIntType());

  module.addFunction(FA);

  builder.setInsertPoint(BB1->end());
  builder.buildStack(module.getIntType(), 200);
  builder.buildBr(ConstantInt::create(module, module.getBoolType(), 1), BB2,
                  BB3);

  builder.setInsertPoint(BB2->end());
  builder.buildBr(BBexit);

  builder.setInsertPoint(BB3->end());
  builder.buildBr(BBexit);

  builder.setInsertPoint(BBexit->end());
  builder.buildRet(ConstantInt::create(module, module.getBoolType(), 1));

  std::cout << module.dump();

  DT.runOn(*FA);
  DT.print(std::cout);
}
