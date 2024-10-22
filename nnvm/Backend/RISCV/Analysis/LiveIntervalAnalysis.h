#pragma once

#include "Backend/RISCV/LowIR.h"
#include <ostream>
#include <set>
namespace nnvm::riscv {

struct LiveInterval {
public:
  Register *reg = nullptr;
  uint64_t begin = 0;
  uint64_t end = 0;
  bool spillable() const { return !reg->isPhy(); }
  bool changable() const { return !reg->isPhy(); }
  bool fixed() const { return reg->isPhy(); }
  void print(std::ostream &out) const {
    EmitInfo info;
    reg->emit(out, info);
    out << ":[" << begin << "," << end << "]\n";
  }
};

struct IntervalEndCompare {
public:
  bool operator()(const LiveInterval &a, const LiveInterval &b) const {
    return a.end < b.end ||
           (a.end == b.end && a.reg->getRegId() < b.reg->getRegId());
  }
};

struct IntervalBeginCompare {
public:
  bool operator()(const LiveInterval &a, const LiveInterval &b) const {
    return a.begin < b.begin;
  }
};

class LiveIntervalAnalysis {
public:
  typedef std::multiset<LiveInterval, IntervalBeginCompare> IntervalSet;
  /**
   * Assign the number of basic block at DFS order.
   * @return the total number of instructions.
   */
  void assignBBNumber(LIRFunc &func);

  void meetReg(Register *value, uint64_t index, LowOperand::OperandFlag flag);
  bool runOn(LIRFunc &func);

  /**
   * Calculate the assigned index of specific instruction.
   * @param BB the block
   * @param localIndex the index inside block
   */
  uint64_t indexOf(LIRBB *BB, uint64_t localIndex);
  uint64_t indexOf(LIRInst *inst);

  IntervalSet getResult() const;

  std::unordered_map<Register *, LiveInterval> getRegToIntervals() const {
    return regToIntervals;
  }

private:
  // We assign numbers in order of basicblock
  std::unordered_map<LIRBB *, uint64_t> BBNumber;

  std::unordered_map<Register *, LiveInterval> regToIntervals;
  IntervalSet intervals;
};
} /* namespace nnvm::riscv */
