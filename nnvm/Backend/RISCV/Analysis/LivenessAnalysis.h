#pragma once

#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include <unordered_map>

// This analysis just follow traditional
namespace nnvm::riscv {
class LivenessAnalysis {
public:
  bool runOn(LIRFunc &func);

  void calcUsesAndDefs(LIRFunc &func);
  void calcLiveIns(LIRFunc &func);
  void calcLiveOuts(LIRFunc &func);

  void dumpLiveIns(LIRFunc &func, std::ostream &out);

  std::unordered_map<LIRBB *, RegSet> getLiveIn() const { return liveIn; }

  std::unordered_map<LIRBB *, RegSet> getLiveOut() const { return liveOut; }

private:
  std::unordered_map<LIRBB *, RegSet> liveIn;
  std::unordered_map<LIRBB *, RegSet> liveOut;
  std::unordered_map<LIRBB *, RegSet> useOf;
  std::unordered_map<LIRBB *, RegSet> defOf;
};
} /* namespace nnvm::riscv */
