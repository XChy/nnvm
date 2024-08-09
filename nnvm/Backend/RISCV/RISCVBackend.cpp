#include "Backend/RISCV/RISCVBackend.h"
#include "Backend/RISCV/CodeLayoutOpt.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/Lower.h"
#include "Backend/RISCV/Optimization/Peephole.h"
#include "Backend/RISCV/Optimization/SSAPeephole.h"
#include "Backend/RISCV/RA/GraphColoringRA.h"
#include "Backend/RISCV/RA/LinearScanRA.h"
#include "Backend/RISCV/Scheduler.h"
#include "Backend/RISCV/StackAllocator.h"
#include <algorithm>

using namespace nnvm::riscv;

namespace nnvm {
int optimizationLevel;
} // namespace nnvm

void RISCVBackend::emit(Module &ir, std::ostream &out) {
  LIRModule lowModule;
  LowerHelper lowerHelper;

  debug(std::cerr << "====Lower Start====\n");
  lowerHelper.lower(ir, lowModule);
  debug(std::cerr << "====Lower Done====\n");

  debug(lowModule.emit(std::cerr));

  debug(std::cerr << "====ISel Start====\n");
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      ISel().isel(*lowFunc);
  debug(std::cerr << "====ISel Done====\n");
  debug(lowModule.emit(std::cerr));

  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      SSAPeephole().run(*lowFunc);

  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      Scheduler().schedule(*lowFunc);

  // Replace virtual registers with physical ones or spill to stackslots.
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal) {
      if (optimizationLevel == 0)
        LinearScanRA().allocate(*lowFunc);
      else
        GraphColoringRA().allocate(*lowFunc);
    }

  // Guarantee no virtual register.
  assert(std::all_of(lowModule.virRegisters.begin(),
                     lowModule.virRegisters.end(),
                     [](Register *reg) { return reg->getUses().size() == 0; }));

  debug(std::cerr << "====RA Done====\n");
  debug(lowModule.emit(std::cerr));

  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      Peephole().run(*lowFunc);

  // Replace abstract stack reference and emit Prologue&Epilogue
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      StackAllocator().allocate(*lowFunc);

  debug(std::cerr << "====SA Done====\n");
  debug(lowModule.emit(std::cerr));

  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      CodeLayoutOpt().run(*lowFunc);

  debug(std::cerr << "====CLO Done====\n");
  debug(lowModule.emit(std::cerr));

  debug(std::cerr << "====Emit Done====\n");
  lowModule.emit(out);
}
