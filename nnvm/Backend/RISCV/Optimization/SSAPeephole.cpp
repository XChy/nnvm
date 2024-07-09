#include "SSAPeephole.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"

using namespace nnvm::riscv;
using namespace nnvm::riscv::pattern;

bool SSAPeephole::run(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  for (auto *BB : func) {
    for (auto *I : incChange(*BB)) {
      builder.setInsertPoint(BB, I);
      LIRValue *A;
      LIRValue *B;
      LIRValue *C;

      if (match(I, pCopy(pSSAReg(A), pSSAReg(B)))) {
        A->replaceWith(B);
        I->eraseFromList();
        continue;
      }

      if (match(I, pDUUInst(pSSAReg(A), pSSAReg(B), pSSAReg(C))) &&
          A->getUses().empty()) {
        I->eraseFromList();
        continue;
      }

      if (match(I, pSpecificDUUInst(ADD, pSSAReg(A), pZeroReg(), pZeroReg()))) {
        A->replaceWith(builder.phyReg(ZERO));
        I->eraseFromList();
        continue;
      }
    }
  }
  return true;
}
