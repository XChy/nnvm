#include "PhiResolution.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "IR/Instruction.h"
#include "Utils/Debug.h"
#include <map>

using namespace nnvm::riscv;

void PhiResolution::resolve(LIRFunc &func) {

  for (LIRBB *BB : func)
    processBB(BB);
}

void PhiResolution::processBB(LIRBB *BB) {
  if (BB->getInsts().empty())
    return;
  // Early exit if there is no phi.
  auto firstPhi = *BB->getInsts().begin();
  if (firstPhi->getOpcode() != (uint64_t)nnvm::InstID::Phi)
    return;

  LIRBuilder builder(*BB->getParent()->getParent());

  // Split critical edges.
  std::map<LIRBB *, LIRBB *> originalToSpiltted;
  for (uint64_t i = 1; i < firstPhi->getNumOp(); i += 2) {
    LIRBB *incomingBB = firstPhi->getOp(i)->as<LIRBB>();
    if (incomingBB->getSuccNum() == 2) {
      int succIndex;
      for (succIndex = 0; succIndex < incomingBB->getSuccNum(); succIndex++)
        if (incomingBB->getSucc(succIndex) == BB)
          break;

      LIRBB *splittedBB = new LIRBB;
      incomingBB->setSucc(succIndex, splittedBB);
      BB->getParent()->insert(splittedBB);
      builder.setInsertPoint(splittedBB->end());
      builder.jumpTo(BB);

      originalToSpiltted[incomingBB] = splittedBB;
    }
  }

  // Replace original incomingBB.
  for (LIRInst *phi : *BB) {
    if (phi->getOpcode() != (uint64_t)nnvm::InstID::Phi)
      break;

    for (uint64_t i = 1; i < phi->getNumOp(); i += 2) {
      LIRBB *incomingBB = phi->getOp(i)->as<LIRBB>();
      if (originalToSpiltted.count(incomingBB))
        phi->setUse(i, originalToSpiltted[incomingBB]);
    }
  }

  // Translate all phis. Put all moves to the predecessors.
  for (LIRInst *phi : incChange(*BB)) {

    if (phi->getOpcode() != (uint64_t)nnvm::InstID::Phi)
      break;

    // Use temporary register to resolve swap problem.
    Register *phiReg = phi->getOp(0)->as<Register>();
    Register *tempReg = builder.newVReg(phiReg->getType());

    // temp -> phi
    builder.setInsertPoint(BB->begin());
    builder.copy(tempReg, phiReg);

    for (uint64_t i = 1; i < phi->getNumOp(); i += 2) {
      LIRBB *incomingBB = phi->getOp(i)->as<LIRBB>();

      // Refine UB values
      LIRValue *incomingValue = phi->getOp(i + 1);

      if (incomingValue->isUBValue())
        incomingValue = builder.phyReg(tempReg->isFP() ? FA0 : ZERO);

      if (incomingBB->getSuccNum() != 1)
        nnvm_unreachable("WTF?");

      // TODO: how to handle ub? Now we just copy an arbitrary value.
      auto it = incomingBB->end();
      it--;
      builder.setInsertPoint(it);

      builder.copy(incomingValue, tempReg);
    }

    phi->eraseFromList();
  }
}
