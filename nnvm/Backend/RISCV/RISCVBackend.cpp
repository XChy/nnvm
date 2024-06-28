#include "Backend/RISCV/RISCVBackend.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LinearScanRA.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/Lower.h"
#include "Backend/RISCV/StackAllocator.h"
#include <algorithm>

using namespace nnvm::riscv;

void RISCVBackend::emit(Module &ir, std::ostream &out) {
  // Add global symbols
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

  // Replace virtual registers with physical ones or spill to stackslots.
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      LinearScanRA().allocate(*lowFunc);

  // Handle virtual register produced by spilling.
  // TODO: maybe this can be solved once?
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      LinearScanRA().allocate(*lowFunc);

  //assert(std::all_of(lowModule.virRegisters.begin(),
                     //lowModule.virRegisters.end(),
                     //[](Register *reg) { return reg->getUses().size() == 0; }));

  debug(std::cerr << "====RA Done====\n");
  debug(lowModule.emit(std::cerr));

  // Replace abstract stack reference and emit Prologue&Epilogue
  for (auto *lowFunc : lowModule.funcs)
    if (!lowFunc->isExternal)
      StackAllocator().allocate(*lowFunc);

  debug(std::cerr << "====SA Done====\n");

  lowModule.emit(out);

  debug(std::cerr << "====Emit Done====\n");
}
