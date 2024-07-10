#include "Peephole.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"

using namespace nnvm::riscv;
using namespace nnvm::riscv::pattern;

bool Peephole::run(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  for (auto *BB : func) {
    for (auto *I : incChange(*BB)) {
      builder.setInsertPoint(BB, I);
      LIRValue *A;
      LIRValue *B;
      LIRValue *C;

      if (match(I, pCopy(pReg(A), pReg(B))) && A == B) {
        I->eraseFromList();
        continue;
      }
    }
  }
  return true;
}
