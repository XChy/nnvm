#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
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
  auto spilledIt = active.rbegin();

  while (spilledIt != active.rend() && !spilledIt->spillable())
    spilledIt++;

  // debug({
  // EmitInfo info;
  // std::cerr << "spilled\n";
  // current.reg->emit(std::cerr, info);
  // std::cerr << ":[" << current.begin << "," << current.end << "]\n";
  //});

  if (spilledIt == active.rend()) {
    vregToStack[current.reg] = func.allocStackSlot(current.reg->bytes());
    return;
  }

  if (!current.spillable()) {
    reg2Reg[current.reg] = reg2Reg[spilledIt->reg];
    vregToStack[spilledIt->reg] = func.allocStackSlot(spilledIt->reg->bytes());
    active.erase(active.find(*spilledIt));
    active.insert(current);
    return;
  }

  // Both are spillable
  if (spilledIt->end > current.end) {
    reg2Reg[current.reg] = reg2Reg[spilledIt->reg];
    vregToStack[spilledIt->reg] = func.allocStackSlot(spilledIt->reg->bytes());
    active.erase(active.find(*spilledIt));
    active.insert(current);
  } else {
    vregToStack[current.reg] = func.allocStackSlot(current.reg->bytes());
  }
}

void LinearScanRA::expireOldInterval(const LiveInterval &current) {

  // debug({
  // std::cerr << "current:";
  // current.print(std::cerr);
  // std::cerr << "expired\n";
  // for (auto it = active.begin(); it != active.end(); ++it)
  // it->print(std::cerr);
  // std::cerr << "expired end\n";
  //});

  for (auto it = active.begin(); it != active.end();) {
    if (it->end >= current.begin)
      break;
    debug({
      std::cerr << "Give back ";
      EmitInfo info;
      reg2Reg[it->reg]->emit(std::cerr, info);
      std::cerr << "\n";
    });

    freeRegs.insert(reg2Reg[it->reg]);
    it = active.erase(it);
  }
}

void LinearScanRA::mapVRegs(LIRFunc &func) {
  LiveIntervalAnalysis LIA;
  LIA.runOn(func);

  auto freeVec = unpreservedRegs(func.getParent());
  auto freeFVec = unpreservedFRegs(func.getParent());
  for (auto reg : freeVec)
    freeRegs.insert(reg);
  for (auto reg : freeFVec)
    freeRegs.insert(reg);


  for (auto reg : getScratchRegs(func.getParent()))
    freeRegs.erase(reg);
  for (auto reg : getScratchFRegs(func.getParent()))
    freeRegs.erase(reg);

  auto intervalSet = LIA.getResult();

  LIRBuilder builder(*func.getParent());
  builder.setInsertPoint(func.getEntry()->end());
  for (auto &interval : intervalSet) {
    expireOldInterval(interval);

    if (interval.fixed()) {
      if (!freeRegs.count(interval.reg)) {
        spillAtInterval(interval, func);
      } else {
        reg2Reg[interval.reg] = interval.reg;
        freeRegs.erase(interval.reg);
        active.insert(interval);
      }
      continue;
    }

    if (!interval.fixed()) {
      auto regIter = freeRegs.begin();
      for (; regIter != freeRegs.end(); ++regIter) {
        if (((*regIter)->getType() == LIRValueType::Float &&
             interval.reg->getType() == LIRValueType::Float) ||
            ((*regIter)->getType() != LIRValueType::Float &&
             interval.reg->getType() != LIRValueType::Float)) {
          reg2Reg[interval.reg] = *regIter;
          freeRegs.erase(regIter);
          active.insert(interval);
          break;
        }
      }

      if (regIter == freeRegs.end()) {
        spillAtInterval(interval, func);
      }
      continue;
    }
  }
}

void LinearScanRA::replaceVRegRef(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  builder.setInsertPoint(func.getEntry()->end());

  for (auto *BB : func) {
    for (auto *inst : *BB) {
      for (LowOperand &op : inst->operands) {
        LIRValue *value = op.getOperand();
        if (value->isPReg()) {
          allocatedRegs.insert(value->as<Register>());
          continue;
        }
        if (!value->isVReg())
          continue;
        Register *vreg = op.getOperand()->as<Register>();

        if (vregToStack.count(vreg)) {
          // TODO:
          auto *slot = vregToStack[vreg];
          auto *newVReg = builder.newVReg(vreg->getType());
          if (op.isDef()) {
            builder.setInsertPoint(BB, inst->getNext());
            builder.storeValueTo(newVReg, slot, vreg->getType());
          } else {
            builder.setInsertPoint(BB, inst);
            builder.loadValueFrom(newVReg, slot, vreg->getType());
          }
          op.set(newVReg);
          continue;
        }

        if (reg2Reg.count(vreg)) {
          op.set(reg2Reg[vreg]);
          allocatedRegs.insert(reg2Reg[vreg]);
          continue;
        }

        debug(std::cerr << "Scratch:" << getNameForRegister(vreg->getRegId())
                        << "\n");
      }
    }
  }
}

void LinearScanRA::addCalleeSaved(LIRFunc &func) {
  // Preserve those defined at entry, and used at exit.
  std::set<Register *> toPreserve = {func.getParent()->getPhyReg(RA)};
  for (Register *reg : allocatedRegs)
    if (reg->isCalleeSaved() || toPreserve.count(reg))
      func.allocCalleeSavedSlot(reg);
}

void LinearScanRA::allocate(LIRFunc &func) {
  mapVRegs(func);
  replaceVRegRef(func);
  addCalleeSaved(func);
}
