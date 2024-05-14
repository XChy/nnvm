#pragma once

#include "Backend/RISCV/LowIR.h"
#include <unordered_map>
namespace nnvm::riscv {

struct SlotRegInfo {};

// At the stack allocation stage, we may produce virtual registers to calculate
// the address of sp + offset. Thus, we have to materialize these virtual
// registers into physical ones. RegClearer is to resolve the problem.
class RegClearer {
public:
  void clear(LowFunc &func, std::unordered_map<uint64_t, uint64_t> &vregNum);
};

// Stack allocator main does:
// - emit prologue at the entry of the function.
// - replace abstract stack reference with (sp + offset).
// - emit epilogue at the exit(s) of the function.
class StackAllocator {
public:
  void allocate(LowFunc &func);
  void emitPrologue(LowFunc &func);
  void emitEpilogue(LowFunc &func);

  bool resolveSlotRef(LowBB *bb, LowBB::Iterator it, uint64_t slotOperandIndex);

private:
  RegClearer clearer;
  LowFunc *func;
  uint64_t frameSize;

  std::unordered_map<uint64_t, uint64_t> vregNum;
};
} /* namespace nnvm::riscv */
