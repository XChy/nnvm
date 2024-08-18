#include "CodeLayoutOpt.h"
#include "ADT/GenericInt.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/PhiResolution.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <utility>
using namespace nnvm;
using namespace nnvm::riscv;

void CodeLayoutOpt::run(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());
  std::list<LIRBB *> result;
  std::unordered_set<LIRBB *> visited;

  std::stack<LIRBB *> worklist;
  worklist.push(func.getEntry());
  while (!worklist.empty()) {
    LIRBB *cur = worklist.top();
    worklist.pop();
    if (visited.count(cur))
      continue;
    visited.insert(cur);
    result.push_back(cur);

    LIRBB *directSucc = nullptr;
    if (cur->getSuccNum() != 0)
      directSucc = cur->getSucc(0);

    if (directSucc && !visited.count(directSucc) &&
        cur->getInsts().getLast()->getOpcode() == JAL) {
      cur->getInsts().getLast()->eraseFromList();
      builder.setInsertPoint(cur->end());
      builder.implicitJumpTo(directSucc);
    }

    for (int i = 1; i < cur->getSuccNum(); i++)
      worklist.push(cur->getSucc(i));
    if (directSucc)
      worklist.push(directSucc);
  }

  for (LIRBB *toremove : incChange(func)) {
    EmitInfo info;

    toremove->removeFromList();
    // Free unreachable blocks.
    if (!visited.count(toremove)) {
      for (LIRInst *inst : incChange(*toremove))
        inst->eraseFromList();
      delete toremove;
    }
  }

  for (LIRBB *toadd : result) {
    func.end().insertBefore(toadd);
  }
}
