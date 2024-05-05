#include "RISCVBackend.h"
using namespace nnvm::riscv;

void RISCVBackend::emit(Module &ir, std::ostream &assembly) {
  for (auto [name, func] : ir.getFunctionMap())
    assembly << ".global " << name << "\n";
}
