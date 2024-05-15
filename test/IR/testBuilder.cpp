#include "Backend/RISCV/RISCVBackend.h"
#include "IR/BasicBlock.h"
#include "IR/Function.h"
#include "IR/Module.h"
#include <IR/IRBuilder.h>

using namespace nnvm;

int main() {
  Module module;
  nnvm::IRBuilder builder(&module);
  Function *FA = new Function(&module);

  BasicBlock *BB1 = new BasicBlock(FA, "entry");
  BasicBlock *BB2 = new BasicBlock(FA, "true");
  BasicBlock *BB3 = new BasicBlock(FA, "false");

  FA->setName("A");
  FA->setReturnType(module.getIntType());

  module.addFunction(FA);

  builder.setInsertPoint(BB1->end());
  builder.buildStack(module.getIntType(), 200);
  builder.buildBr(ConstantInt::create(module, module.getBoolType(), 1), BB2,
                  BB3);

  builder.setInsertPoint(BB2->end());
  builder.buildRet(ConstantInt::create(module, module.getIntType(), 32));

  builder.setInsertPoint(BB3->end());
  builder.buildRet(ConstantInt::create(module, module.getIntType(), -666));

  assert(BB1->getSucc(0) == BB2 && BB1->getSucc(1) == BB3);
  assert(BB2->getPredNum() == 1);
  assert(BB3->getPredNum() == 1);

  riscv::RISCVBackend backend;
  std::cout << module.dump() << "\n";
  backend.emit(module, std::cout);
}
