#include "NearbyRegAnalysis.h"
#include "Backend/RISCV/Info/Register.h"

using namespace nnvm::riscv;

void NearbyRegAnalysis::run(LowFunc &func, LowBB &bb, LowBB::Iterator current) {

  std::set<uint64_t> dead;
  std::set<uint64_t> used;
  int iterTimes = 0;
  LowBB::Iterator deadSeeker = current;
  for (; deadSeeker != bb.end(); iterTimes++, deadSeeker++) {
    if (iterTimes >= 10)
      break;
    for (LowOperand reg : deadSeeker->operand) {
      if (!reg.isPhyReg() || !reg.isUse())
        continue;
      used.insert(reg.regId);
    }

    if (!deadSeeker->operand[0].isPhyReg() || !deadSeeker->operand[0].isDef())
      continue;

    uint64_t deadRegId = deadSeeker->operand[0].regId;
    if (!used.count(deadRegId))
      freeRegs.push_back(deadRegId);
  }
}
