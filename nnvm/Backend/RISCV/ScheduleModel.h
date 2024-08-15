#pragma once

#include "Backend/RISCV/LowIR.h"
#include "IR/Module.h"
#include <map>

namespace nnvm {
namespace riscv {

// The U7 execution unit is a dual-issue, in-order pipeline. It's a schedule
// model designed for sifive-u74 core.
class ScheduleModel {
public:
  virtual bool canIssue(LIRInst *inst) = 0;
  virtual void issue(LIRInst *inst) = 0;

  virtual void step() = 0;
};

class U74ScheduleModel final : public ScheduleModel {
public:
  enum ScheduleResource { IDIV, FDIV };
  enum IssueConstraint { Memory, FPU, MulOrDiv };

  bool canIssue(LIRInst *inst);
  void issue(LIRInst *inst);

  void step();

private:
  uint numFreePipe = 2;
  uint issueWidth = 2;

  std::unordered_map<Register *, int> timeReg;
  bool areAllUsedRegFree(LIRInst *inst, int latency = 0);

  std::unordered_map<ScheduleResource, int> timeRes;
  std::set<IssueConstraint> issueConstraint;

  void addConstraint(IssueConstraint cons) { issueConstraint.insert(cons); }
  bool isFree(IssueConstraint cons) { return !issueConstraint.count(cons); }

  void useRes(ScheduleResource res, int time) { timeRes.insert({res, time}); }
  bool canUseRes(ScheduleResource res) { return timeRes[res] == 0; }
};

} // namespace riscv
} // namespace nnvm
