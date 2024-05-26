#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/StackSlot.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/LinearScanRA.h>

using namespace nnvm::riscv;

uint64_t LinearScanRA::indexOf(LowBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

void LinearScanRA::expireOldInterval(const LiveInterval &current) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->end >= current.begin)
      break;
    freeGPRs.push(vregToPReg[it->regId]);
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
      vregToPReg[interval.regId] = freeGPRs.top();
      freeGPRs.pop();
      active.insert(interval);
    }
  }

  for (auto *BB : func.BBs) {
    for (LowInst &I : BB->insts) {
      for (LowOperand &op : I.operand) {
        if (op.isVR()) {
          op.type = LowOperand::GPRegister;
          op.regId = vregToPReg[op.regId];
          allocatedRegs.insert(op.regId);
        }
      }
    }
  }

  for (uint64_t phyRegId : allocatedRegs)
    if (calleeSavedRegs().count(phyRegId)) {
      func.allocStack(StackSlot(StackSlot::CalleeSaved, 8, phyRegId));
    }
}
