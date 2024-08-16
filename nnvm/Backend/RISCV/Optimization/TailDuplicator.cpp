#include "TailDuplicator.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include <algorithm>

using namespace nnvm::riscv;
using namespace nnvm::riscv::pattern;

constexpr int maxDupInstNum = 5;

static inline bool isEndWithUncondBr(LIRBB *block, LIRBB *&succ) {
  auto *lastInst = block->getInsts().getLast();
  if (lastInst->getOpcode() == JAL) {
    succ = getBranchDest(lastInst);
    return true;
  }
  return false;
}

bool isProfitableToDuplicate(LIRBB *block) {
  LIRBB *succ;
  return isEndWithUncondBr(block, succ) &&
         block->getInsts().size() < maxDupInstNum;
}

bool TailDuplicator::run(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  bool changed = true;
  while (changed) {
    changed = false;

    for (auto *block : func) {
      // Candidate for duplicate
      LIRBB *succ;

      if (!isEndWithUncondBr(block, succ))
        continue;
      // FIXME: succ is not predecessor of block?
      if (succ == block || !isProfitableToDuplicate(succ))
        continue;

      // Copy instructions
      block->getInsts().getLast()->eraseFromList();
      builder.setInsertPoint(block->end());
      for (auto *inst : *succ)
        builder.addInst(inst->copy());

      // Fix implicit jump
      auto *lastInst = block->getInsts().getLast();
      if (lastInst->getOpcode() == IMPLICIT_JUMP) {
        LIRBB *implictSucc = getBranchDest(lastInst);
        if (block == *(--func.end()) || block->getNext() != implictSucc) {
          lastInst->eraseFromList();
          builder.setInsertPoint(block->end());
          builder.jumpTo(implictSucc);
        }
      }

      changed = true;
    }
  }
  return true;
}
