#include "Backend/RISCV/CodegenInfo.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/LinearScanRA.h>

using namespace nnvm::riscv;

uint64_t LinearScanRA::indexOf(LowBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

void LinearScanRA::expireOldInterval(const LiveInterval &current) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->end >= current.begin)
      return;
    it = active.erase(it);
  }
}

void LinearScanRA::allocate(LowFunc &func) {
  LiveIntervalAnalysis LIA;
  LIA.runOn(func);

  auto freeVec = unpreservedRegs();

  freeGPRs = {freeVec.begin(), freeVec.end()};

  auto intervalSet = LIA.result();

  for (auto &interval : intervalSet) {
    expireOldInterval(interval);
    if (freeGPRs.size() == 0) {
      // TODO: spill
    } else {
      vregToPReg[interval.regId] = *freeGPRs.begin();
      freeGPRs.erase(freeGPRs.begin());
      active.insert(interval);
    }
  }

  for (auto *BB : func.BBs) {
    for (LowInst &I : BB->insts) {
      for (auto it = I.operand.begin(); it != I.operand.end(); it++) {
        LowOperand &op = *it;
        if (op.isVR()) {
          op.type = LowOperand::GPRegister;
          op.regId = vregToPReg[op.regId];
        }
      }
    }
  }
}