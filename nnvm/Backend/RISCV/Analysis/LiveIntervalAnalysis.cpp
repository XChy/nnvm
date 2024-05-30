#include "Backend/RISCV/LowIR.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <Backend/RISCV/Verifier/DefUsePrinter.h>
#include <algorithm>
#include <stack>
#include <unordered_set>

using namespace nnvm::riscv;

uint64_t LiveIntervalAnalysis::indexOf(LIRBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex;
}

std::multiset<LiveInterval, IntervalCompare> LiveIntervalAnalysis::result() {
  return intervals;
}

bool LiveIntervalAnalysis::runOn(LIRFunc &func) {
  uint64_t instructionCount = 0;

  // TODO: dfs
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

  debug(printDefUse(func));

  for (LIRBB *BB : func) {
    uint64_t localIndex = 0;
    for (LIRInst *inst : *BB) {
      uint64_t globalIndex = indexOf(BB, localIndex);
      for (const LowOperand &operand : inst->operands) {
        LIRValue *value = operand.getOperand();
        if (!value->isVReg())
          continue;
        Register *reg = value->as<Register>();

        if (!regToIntervals.count(reg))
          regToIntervals[reg].reg = reg;

        auto &interval = regToIntervals[reg];
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

  for (auto interval : intervals)
    debug(std::cerr << "v" << interval.reg->getRegId() - VR_BEGIN << ":["
                    << interval.begin << "," << interval.end << "]\n");

  return true;
}
