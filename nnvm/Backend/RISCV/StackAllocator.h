#pragma once

#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include <unordered_map>
#include <vector>
namespace nnvm::riscv {

// At the stack allocation stage, we may produce virtual registers to calculate
// the address of sp + offset. Thus, we have to materialize these virtual
// registers into physical ones. RegClearer is to resolve the problem.
class RegClearer {
public:
  RegClearer() {}

  void setScratchReg(Register *reg) { scratchReg = reg; }
  Register *getScratchReg() const { return scratchReg; }

  void clear(LIRFunc &func, std::unordered_map<uint64_t, uint64_t> &vregNum);

private:
  Register *scratchReg;
};

// Stack allocator main does:
// - emit prologue at the entry of the function.
// - replace abstract stack reference with (sp + offset).
// - emit epilogue at the exit(s) of the function.
class StackAllocator {
  struct FunctionStackInfo {
    bool isCaller = false;
    std::vector<LIRBB *> exitBBs;
    std::vector<uint64_t> regsToSave;
  };

public:
  StackAllocator();
  void allocate(LIRFunc &func);
  FunctionStackInfo calculateStackInfo(LIRFunc &func);
  void emitPrologue(LIRBuilder &builder, LIRFunc &func);
  void emitEpilogue(LIRBuilder &builder, LIRFunc &func);

  bool resolveSlotRef(LIRBuilder &builder, LIRBB::Iterator it,
                      uint64_t slotOperandIndex);

private:
  RegClearer clearer;

  LIRFunc *func;
  FunctionStackInfo stackInfo;
  uint64_t frameSize;
  Register *scratchReg;

  std::unordered_map<uint64_t, uint64_t> vregNum;
};
} /* namespace nnvm::riscv */
