#include "RISCVBackend.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LinearScanRA.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
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
  LinearScanRA RA;

  lowerHelper.lower(ir, lowModule);

  for (auto *lowFunc : lowModule.funcs)
    isel.isel(*lowFunc);

  debug(std::cerr << "====ISel Done====\n");
  debug(lowModule.emit(std::cerr));

  // Replace virtual registers with physical ones or spill to stackslots.
  for (auto *lowFunc : lowModule.funcs)
    RA.allocate(*lowFunc);

  debug(std::cerr << "====RA Done====\n");
  debug(lowModule.emit(std::cerr));

  // Replace abstract stack reference and emit Prologue&Epilogue
  for (auto *lowFunc : lowModule.funcs)
    SA.allocate(*lowFunc);

  debug(std::cerr << "====SA Done====\n");
  debug(lowModule.emit(std::cerr));

  debug(std::cerr << "====Emit Done====\n");
  lowModule.emit(out);
}
