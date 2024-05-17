#include <Backend/RISCV/EmitInfo.h>
#include <Backend/RISCV/LowIR.h>

using namespace nnvm::riscv;

EmitInfo::EmitInfo(const LowModule &module) {
  for (auto *func : module.funcs)
    markBBAsEntry(func->BBs.front(), func);
}

std::string EmitInfo::labelOf(const LowBB *bb) {
  if (entries.count(bb))
    return entries[bb]->name;
  return "bb" + std::to_string(indexOf(bb));
}
