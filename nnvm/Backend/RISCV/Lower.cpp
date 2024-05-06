#include "Lower.h"
#include "Backend/RISCV/LowIR.h"
#include "IR/Function.h"
using namespace nnvm;
using namespace nnvm::riscv;

void riscv::lower(Module &module, LowModule &lowered) {
  for (auto &[name, func] : module.getFunctionMap()) {
    uint virtualRegNum = 0;
    LowFunc *lowFunc = new LowFunc;
    lowFunc->name = name;
    lowered.funcs.push_back(lowFunc);
  }
}
