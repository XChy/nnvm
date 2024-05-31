#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/StackSlot.h"
#include "Utils/Debug.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/LinearScanRA.h>
#include <iterator>

using namespace nnvm::riscv;

uint64_t LinearScanRA::indexOf(LIRBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

void LinearScanRA::spillAtInterval(const LiveInterval &current, LIRFunc &func) {
  LiveInterval spilled = *std::prev(active.end());
  if (spilled.end > current.end) {
    vregToPReg[current.reg] = vregToPReg[spilled.reg];
    vregToStack[spilled.reg] = func.allocStackSlot(spilled.reg->bytes());
    active.erase(std::prev(active.end()));
    active.insert(current);
  } else {
    vregToStack[current.reg] = func.allocStackSlot(spilled.reg->bytes());
  }
}

void LinearScanRA::expireOldInterval(const LiveInterval &current) {
  for (auto it = active.begin(); it != active.end();) {
    if (it->end >= current.begin)
      return;
    freeGPRs.push(vregToPReg[it->reg]);
    it = active.erase(it);
  }
}

void LinearScanRA::allocate(LIRFunc &func) {
  LiveIntervalAnalysis LIA;
  LIA.runOn(func);

  auto freeVec = unpreservedRegs(func.getParent());
  freeGPRs = {freeVec.begin(), freeVec.end()};

  auto intervalSet = LIA.result();

  LIRBuilder builder(*func.getParent());
  builder.setInsertPoint(func.getEntry()->end());
  for (auto &interval : intervalSet) {
    expireOldInterval(interval);
    if (freeGPRs.size() == 0) {
      spillAtInterval(interval, func);
    } else {
      vregToPReg[interval.reg] = freeGPRs.top();
      freeGPRs.pop();
      active.insert(interval);
    }
  }

  for (auto *BB : func) {
    for (auto *inst : *BB) {
      for (LowOperand &op : inst->operands) {
        LIRValue *value = op.getOperand();
        if (!value->isVReg())
          continue;
        Register *vreg = op.getOperand()->as<Register>();

        builder.setInsertPoint(inst);

        if (vregToStack.count(vreg)) {
          if (op.isUse()) {
            builder.addInst(LIRInst::create(
                LD, builder.phyReg(RA), vregToStack[vreg], LIRImm::create(0)));
          } else if (op.isDef()) {
            builder.setInsertPoint(inst->getNext());
            builder.addInst(LIRInst::create(SD, 3)
                                ->setUse(0, builder.phyReg(RA))
                                ->setUse(1, vreg)
                                ->setUse(2, LIRImm::create(0)));
          } else {
            nnvm_unreachable("WTF?");
          }

          op.set(vregToPReg[value->as<Register>()]);
          continue;
        }

        if (vregToPReg.count(vreg)) {
          op.set(vregToPReg[vreg]);
          allocatedRegs.insert(vregToPReg[vreg]);
          continue;
        }

        std::cout << vreg->getRegId() - VR_BEGIN << "\n";
        nnvm_unimpl();
      }
    }
  }

  // allocatedRegs.insert(builder.phyReg(RA));
  // for (Register *phyReg : allocatedRegs)
  // if (phyReg->isCalleeSaved() || phyReg->getRegId() == RA) {
  // auto *slot = func.allocStackSlot();
  // slot->setType(StackSlot::CalleeSaved);
  // slot->setSize(8);
  // slot->setReg(phyReg);
  //}
}
