#include "RISCVBackend.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/Lower.h"

using namespace nnvm::riscv;

void RISCVBackend::emit(Module &ir, std::ostream &out) {
  // Add global symbols
  LowModule lowModule;
  LowerHelper lowerHelper;
  lowerHelper.lower(ir, lowModule);

  for (auto [name, func] : ir.getFunctionMap())
    out << ".global " << name << "\n";
  EmitInfo info;
  lowModule.emit(out, info);
}
