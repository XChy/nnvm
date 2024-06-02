#pragma once

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

  std::unordered_map<LIRBB *, std::set<Register *>> getLiveIn() {
    return liveIn;
  }

  std::unordered_map<LIRBB *, std::set<Register *>> getLiveOut() {
    return liveOut;
  }

private:
  std::unordered_map<LIRBB *, std::set<Register *>> liveIn;
  std::unordered_map<LIRBB *, std::set<Register *>> liveOut;
  std::unordered_map<LIRBB *, std::set<Register *>> useOf;
  std::unordered_map<LIRBB *, std::set<Register *>> defOf;
};
} /* namespace nnvm::riscv */
