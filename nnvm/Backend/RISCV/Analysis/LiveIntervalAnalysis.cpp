#include "Backend/RISCV/LowIR.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <algorithm>

using namespace nnvm::riscv;

uint64_t LiveIntervalAnalysis::indexOf(LowBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

std::multiset<LiveInterval, IntervalCompare> LiveIntervalAnalysis::result() {
  return intervals;
}

bool LiveIntervalAnalysis::runOn(LowFunc &func) {
  uint64_t instructionCount = 0;
  // TODO: dfs
  for (LowBB *BB : func.BBs) {
    BBNumber[BB] = instructionCount;
    instructionCount += BB->insts.size();
  }

  for (LowBB *BB : func.BBs) {
    uint64_t localIndex = 0;
    for (LowInst &inst : BB->insts) {
      uint64_t globalIndex = indexOf(BB, localIndex);
      for (LowOperand &operand : inst.operand) {
        if (!operand.isVR())
          continue;

        if (!regToIntervals.count(operand.regId))
          regToIntervals[operand.regId].regId = operand.regId;

        auto &interval = regToIntervals[operand.regId];
        if (operand.isDef()) {
          interval.begin = globalIndex;
          interval.end = globalIndex;
        }

        if (operand.isUse())
          interval.end = std::max(globalIndex, interval.end);
      }

      localIndex++;
    }
  }

  for (auto &[id, interval] : regToIntervals)
    intervals.insert(interval);

  return true;
}
