#include "ADT/Graph.h"
#include "Backend/RISCV/Analysis/LivenessAnalysis.h"
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

using nnvm::Graph;
using nnvm::GraphVisitor;
using namespace nnvm::riscv;

uint64_t LiveIntervalAnalysis::indexOf(LIRBB *BB, uint64_t localIndex) {
  return BBNumber[BB] + localIndex * 10;
}

uint64_t LiveIntervalAnalysis::indexOf(LIRInst *inst) {
  uint localIndex = 0;

  for (auto *I : *inst->getParent()) {
    if (I == inst)
      break;
    localIndex++;
  }

  return BBNumber[inst->getParent()] + localIndex * 10;
}

LiveIntervalAnalysis::IntervalSet LiveIntervalAnalysis::getResult() const {
  return intervals;
}

template <> class nnvm::Graph<LIRBB *> {
public:
  uint64_t getSuccNum(LIRBB *node) const { return node->getSuccNum(); }
  LIRBB *getSucc(LIRBB *node, uint64_t index) const {
    return node->getSucc(index);
  }
};

static inline void
assignDFSNumber(LIRFunc &func,
                std::unordered_map<LIRBB *, uint64_t> &BBNumber) {
  Graph<LIRBB *> graph;
  uint64_t instructionCount = 0;
  GraphVisitor::dfs(graph, func.getEntry(), [&](LIRBB *cur) {
    BBNumber[cur] = instructionCount;
    instructionCount += cur->getInsts().size() * 10;
  });
}

static inline void
assignRPONumber(LIRFunc &func,
                std::unordered_map<LIRBB *, uint64_t> &BBNumber) {
  Graph<LIRBB *> graph;
  uint64_t instructionCount = 0;
  GraphVisitor::reversePostorder(graph, func.getEntry(), [&](LIRBB *cur) {
    BBNumber[cur] = instructionCount;
    instructionCount += cur->getInsts().size() * 10;
  });
}

void LiveIntervalAnalysis::assignBBNumber(LIRFunc &func) {
  assignRPONumber(func, BBNumber);
}

void LiveIntervalAnalysis::meetReg(Register *reg, uint64_t index,
                                   LowOperand::OperandFlag flag) {
  // Ignore those with fixed value
  if (reg->getRegId() == ZERO)
    return;
  if (flag == LowOperand::Def)
    index++;
  if (!regToIntervals.count(reg)) {
    regToIntervals[reg].reg = reg;
    regToIntervals[reg].begin = index;
  }

  auto &interval = regToIntervals[reg];
  interval.begin = std::min(index, interval.begin);
  interval.end = std::max(index, interval.end);
}

bool LiveIntervalAnalysis::runOn(LIRFunc &func) {
  LivenessAnalysis LA;
  LA.runOn(func);
  assignBBNumber(func);

  debug(printDefUse(func, BBNumber));

  auto liveIns = LA.getLiveIn();
  auto liveOuts = LA.getLiveOut();

  for (LIRBB *BB : func) {
    auto liveIn = liveIns[BB];
    auto liveOut = liveOuts[BB];

    // Handle register living across the whole basic block.
    for (auto liveReg : liveIn) {
      if (liveOut.count(liveReg)) {
        regToIntervals[liveReg].reg = liveReg;
        regToIntervals[liveReg].begin =
            std::min(regToIntervals[liveReg].begin, BBNumber[BB]);
        regToIntervals[liveReg].end =
            std::max(regToIntervals[liveReg].end,
                     BBNumber[BB] + (BB->getInsts().size() - 1) * 10);
      }
    }

    // Handle register living part of the whole basic block.
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
          meetReg(reg, globalIndex, LowOperand::Use);
          meetReg(reg, globalIndex, LowOperand::Def);
        }
      }

      localIndex++;
    }
  }

  regToIntervals.erase(func.getParent()->getPhyReg(ZERO));

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
