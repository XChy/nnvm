#include "LICM.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "IR/Attributes.h"

using namespace nnvm;

bool LICMPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);

  auto loops = LA->getLoops();
  for (Loop *loop : loops) {
    BasicBlock *preheader = nullptr;

    auto preds = makeRange(loop->getHeader()->getPredBegin(),
                           loop->getHeader()->getPredEnd());
    for (auto *pred : preds) {
      if (loop->contains(pred))
        continue;

      if (!preheader) {
        preheader = pred;
        continue;
      }
      if (preheader) {
        preheader = nullptr;
        break;
      }
    }

    if (!preheader)
      continue;

    if (preheader->getSuccNum() != 1)
      continue;

    // Hoisting code
    for (Instruction *I : incChange(*loop->getHeader())) {
      if (isInvariant(I, loop)) {
        I->removeFromBB();
        (--preheader->end()).insertBefore(I);
      }
    }
  }

  return true;
}

bool LICMPass::isOperandsInvariant(Instruction *I, Loop *L) {
  for (size_t i = 0; i < I->getOperandNum(); i++) {
    Value *operand = I->getOperand(i);
    if (operand->isInstruction() &&
        L->contains(cast<Instruction>(operand)->getBlock()))
      return false;
  }
  return true;
}

bool LICMPass::isInvariant(Instruction *I, Loop *L) {
  if (I->isa<PhiInst>())
    return false;
  if (I->isa<TerminatorInst>())
    return false;
  if (auto *CI = mayCast<CallInst>(I))
    return cast<Function>(CI->getCallee())->isAttached(Attribute::Pure) &&
           isOperandsInvariant(I, L);
  if (I->mayReadMemory() || I->mayWriteToMemory())
    return false;

  return isOperandsInvariant(I, L);
}
