#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/StackSlot.h"
#include "Utils/Debug.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/LinearScanRA.h>
#include <iterator>

using namespace nnvm::riscv;

uint64_t LinearScanRA::indexOf(LowBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

LinearScanRA::IntervalItertator
LinearScanRA::expireOldInterval(const LiveInterval &current) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->end >= current.begin)
      return it;
    freeGPRs.push(vregToPReg[it->regId]);
    it = active.erase(it);
  }
  return active.end();
}

void LinearScanRA::allocate(LowFunc &func) {
  LiveIntervalAnalysis LIA;
  LIA.runOn(func);

  auto freeVec = unpreservedRegs();

  freeGPRs = {freeVec.begin(), freeVec.end()};

  auto intervalSet = LIA.result();

  for (auto &interval : intervalSet) {
    auto conflictIntervalIter = expireOldInterval(interval);
    if (freeGPRs.size() == 0) {
      vregToPReg[interval.regId] = vregToPReg[conflictIntervalIter->regId];
      vregToStack[conflictIntervalIter->regId] = func.allocStackSlot(8);
      vregToPReg[conflictIntervalIter->regId] = RA;
      //  TODO: spill efficiently
    } else {
      vregToPReg[interval.regId] = freeGPRs.top();
      freeGPRs.pop();
    }
    active.insert(interval);
  }

  for (auto *BB : func.BBs) {
    for (auto it = BB->begin(); it != BB->end(); ++it) {
      for (LowOperand &op : it->operand) {
        if (!op.isVR())
          continue;

        if (vregToStack.count(op.regId)) {
          if (op.isUse()) {
            BB->insertBefore(it, LowInst::create(LD, getRAReg(),
                                                 LowOperand::stackSlot(
                                                     vregToStack[op.regId]),
                                                 LowOperand::imm(0)));
          } else if (op.isDef()) {
            BB->insertBefore(
                std::next(it),
                LowInst{SD,
                        {getRAReg().use(),
                         LowOperand::stackSlot(vregToStack[op.regId]).use(),
                         LowOperand::imm(0)}});

          } else {
            nnvm_unreachable("WTF?");
          }

          op.type = LowOperand::GPRegister;
          op.regId = vregToPReg[op.regId];

          continue;
        }

        if (vregToPReg.count(op.regId)) {
          op.type = LowOperand::GPRegister;
          op.regId = vregToPReg[op.regId];
          allocatedRegs.insert(op.regId);
          continue;
        }
        std::cout << op.regId - VR_BEGIN << "\n";
        nnvm_unimpl();
      }
    }
  }

  allocatedRegs.insert(RA);
  for (uint64_t phyRegId : allocatedRegs)
    if (calleeSavedRegs().count(phyRegId))
      func.allocStack(StackSlot(StackSlot::CalleeSaved, 8, phyRegId));
}
