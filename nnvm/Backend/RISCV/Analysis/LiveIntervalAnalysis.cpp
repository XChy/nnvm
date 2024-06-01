#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/Verifier/DefUsePrinter.h>
#include <algorithm>
#include <cstdint>
#include <stack>
#include <unordered_set>

using namespace nnvm::riscv;

uint64_t LiveIntervalAnalysis::indexOf(LIRBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

LiveIntervalAnalysis::IntervalSet LiveIntervalAnalysis::getResult() const {
  return intervals;
}

uint64_t LiveIntervalAnalysis::assignBBNumber(LIRFunc &func) {
  uint64_t instructionCount = 0;

  std::unordered_set<LIRBB *> visited;
  std::stack<LIRBB *> toVisit;
  toVisit.push(func.getEntry());
  while (!toVisit.empty()) {
    LIRBB *cur = toVisit.top();
    toVisit.pop();
    if (visited.count(cur))
      continue;
    visited.insert(cur);

    BBNumber[cur] = instructionCount;
    instructionCount += cur->getInsts().size();
    for (int i = 0; i < cur->getSuccNum(); i++) {
      toVisit.push(cur->getSucc(i));
    }
  }
  return instructionCount;
}

void LiveIntervalAnalysis::meetReg(Register *reg, uint64_t index,
                                   LowOperand::OperandFlag flag) {
  // Ignore those with fixed value
  if (reg->getRegId() == ZERO)
    return;
  if (!regToIntervals.count(reg)) {
    regToIntervals[reg].reg = reg;
    regToIntervals[reg].begin = index;
  }

  auto &interval = regToIntervals[reg];
  interval.end = std::max(index, interval.end);
}

bool LiveIntervalAnalysis::runOn(LIRFunc &func) {
  assignBBNumber(func);

  debug(printDefUse(func));

  for (LIRBB *BB : func) {
    uint64_t localIndex = 0;
    for (LIRInst *inst : *BB) {
      uint64_t globalIndex = indexOf(BB, localIndex);

      for (const LowOperand &operand : inst->operands) {
        LIRValue *value = operand.getOperand();
        if (!value->isReg())
          continue;
        meetReg(value->as<Register>(), globalIndex, operand.getFlag());
      }

      // Model caller-save
      if (inst->getOpcode() == CALL) {
        for (uint64_t regId : callerSavedRegIds()) {
          Register *reg = func.getParent()->getPhyReg(regId);
          meetReg(reg, globalIndex, LowOperand::Def);
        }
      }

      localIndex++;
    }
  }

  for (auto &[id, interval] : regToIntervals)
    intervals.insert(interval);

  for (auto interval : intervals)
    debug({
      EmitInfo info;
      interval.reg->emit(std::cerr, info);
      std::cerr << ":[" << interval.begin << "," << interval.end << "]\n";
    });

  return true;
}
