#include "RISCVBackend.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/Lower.h"
#include "Backend/RISCV/StackAllocator.h"
#include "Backend/RISCV/TrivialRA.h"

using namespace nnvm::riscv;

void RISCVBackend::emit(Module &ir, std::ostream &out) {
  // Add global symbols
  LowModule lowModule;
  LowerHelper lowerHelper;
  ISel isel;
  StackAllocator SA;
  TrivialRA RA;

  lowerHelper.lower(ir, lowModule);

  for (auto *lowFunc : lowModule.funcs)
    isel.isel(*lowFunc);

  // legalize(lowModule);
  for (auto *lowFunc : lowModule.funcs)
    RA.allocate(*lowFunc);

  // Replace stack reference and emit Prolog/Epilog
  for (auto *lowFunc : lowModule.funcs)
    SA.allocate(*lowFunc);

  EmitInfo info;
  for (auto &func : lowModule.funcs)
    for (auto *bb : func->BBs)
      info.allocBB(bb);

  lowModule.emit(out, info);
}

void RISCVBackend::legalize(LowModule &module) {
  for (auto *func : module.funcs) {
    for (auto *bb : func->BBs) {
      for (auto it = bb->insts.begin(); it != bb->insts.end(); it++) {
        uint64_t type = (uint64_t)it->type;
        if (it->type <= LowInst::ISA_BEGIN) {
        }
      }
    }
  }
}
