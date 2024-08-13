#include "LivenessAnalysis.h"
#include "Backend/RISCV/CodegenInfo.h"
#include <iostream>
#include <iterator>
#include <queue>

using namespace nnvm::riscv;

bool LivenessAnalysis::runOn(LIRFunc &func) {
  calcUsesAndDefs(func);
  calcLiveIns(func);
  calcLiveOuts(func);
  debug(dumpLiveIns(func, std::cerr));
  return true;
}

void LivenessAnalysis::calcUsesAndDefs(LIRFunc &func) {
  for (LIRBB *BB : func) {
    RegSet BBUses;
    RegSet BBDefs;

    for (LIRInst *I : *BB) {
      auto uses = getUsesOf(I);
      auto defs = getDefsOf(I);

      for (Register *use : uses)
        if (!BBDefs.count(use))
          BBUses.insert(use);

      for (Register *def : defs)
        if (!BBUses.count(def))
          BBDefs.insert(def);
    }

    useOf[BB] = std::move(BBUses);
    defOf[BB] = std::move(BBDefs);
  }
}

void LivenessAnalysis::dumpLiveIns(LIRFunc &func, std::ostream &out) {
  uint index = 0;
  EmitInfo info;

  for (LIRBB *BB : func) {
    out << "bb" << index << ":\n";
    for (Register *reg : liveIn[BB]) {
      reg->emit(out, info);
      out << ", ";
    }
    out << "\n";
    index++;
  }
}

void LivenessAnalysis::calcLiveIns(LIRFunc &func) {
  std::queue<LIRBB *> worklist;
  for (LIRBB *BB : func)
    worklist.push(BB);

  while (!worklist.empty()) {
    LIRBB *BB = worklist.front();
    worklist.pop();

    RegSet oldLiveIn = liveIn[BB];

    liveIn[BB].clear();
    for (int i = 0; i < BB->getSuccNum(); i++) {
      LIRBB *succ = BB->getSucc(i);
      for (Register *liveReg : liveIn[succ])
        if (!defOf[BB].count(liveReg))
          liveIn[BB].insert(liveReg);
    }

    liveIn[BB].insert(useOf[BB].begin(), useOf[BB].end());

    if (oldLiveIn != liveIn[BB])
      for (int i = 0; i < BB->getPredNum(); i++)
        worklist.push(BB->getPred(i));
  }
}

void LivenessAnalysis::calcLiveOuts(LIRFunc &func) {
  for (LIRBB *BB : func) {
    for (int i = 0; i < BB->getSuccNum(); i++) {
      LIRBB *succ = BB->getSucc(i);
      for (auto reg : liveIn[succ])
        liveOut[BB].insert(reg);
    }
  }
}
