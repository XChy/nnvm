#include <Backend/RISCV/EmitInfo.h>
#include <Backend/RISCV/LowIR.h>

using namespace nnvm::riscv;

EmitInfo::EmitInfo(const LIRModule &module) {
  for (auto *func : module.funcs)
    if (!func->isExternal)
      markBBAsEntry(func->getEntry(), func);
}

std::string EmitInfo::labelOf(const LIRBB *bb) {
  if (entries.count(bb))
    return entries[bb]->name;
  return "bb" + std::to_string(indexOf(bb));
}
