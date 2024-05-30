#include "NearbyRegAnalysis.h"
#include "Backend/RISCV/Info/Register.h"

using namespace nnvm::riscv;

void NearbyRegAnalysis::run(LIRFunc &func, LIRBB &bb, LIRBB::Iterator current) {

  std::set<Register *> dead;
  std::set<Register *> used;

  int iterTimes = 0;
  LIRBB::Iterator deadSeeker = current;
  for (; deadSeeker != bb.end(); iterTimes++, deadSeeker++) {
    LIRInst *inst = *deadSeeker;
    if (iterTimes >= 10)
      break;
    for (LowOperand &reg : inst->operands) {
      if (!reg.getOperand()->isPReg() || !reg.isUse())
        continue;
      used.insert(reg.getOperand()->as<Register>());
    }

    if (!inst->getOp(0)->isPReg() || !inst->getOpHandle(0)->isDef())
      continue;

    Register *deadReg = inst->getOp(0)->as<Register>();
    if (!used.count(deadReg))
      freeRegs.push_back(deadReg);
  }
}
