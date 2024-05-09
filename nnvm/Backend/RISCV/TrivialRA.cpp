
#include "Backend/RISCV/TrivialRA.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include <unordered_map>
#include <unordered_set>
using namespace nnvm::riscv;

void TrivialRA::allocate(LowFunc &func) {
  auto freeRegs = unpreservedRegs();
  std::unordered_set<uint64_t> available(freeRegs.begin(), freeRegs.end());
  // Map from virtual register to the physical registers.
  std::unordered_map<uint64_t, uint64_t> assignedRegs;
  // Map from virtual register to the stack slot.
  std::unordered_map<uint64_t, uint64_t> spilledStackSlots;

  for (LowOperand operand : func.args)
    if (operand.isGPR())
      available.erase(operand.registerId);

  for (auto *BB : func.BBs) {
    for (LowInst &I : BB->insts) {
      for (auto it = I.operand.begin(); it != I.operand.end(); it++) {
        LowOperand &op = *it;
        if (op.isVR()) {
          if (available.empty()) {
            if (op.flag == LowOperand::Def) {
              uint64_t freeOne = *available.begin();
              assignedRegs[op.registerId] = freeOne;
              op.type = LowOperand::GPRegister;
              op.registerId = freeOne;
              available.erase(available.begin());
            } else {
              op.type = LowOperand::GPRegister;
              op.registerId = assignedRegs[op.registerId];
            }
            // Trivial spill
            // BB->insts.insert(it, {LowInst::S})
          } else {
            if (op.flag == LowOperand::Def) {
              uint64_t freeOne = *available.begin();
              assignedRegs[op.registerId] = freeOne;
              op.type = LowOperand::GPRegister;
              op.registerId = freeOne;
              available.erase(available.begin());
            } else {
              op.type = LowOperand::GPRegister;
              op.registerId = assignedRegs[op.registerId];
            }
          }
        }
      }
    }
  }
}
