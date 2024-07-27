#include "LICM.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "IR/Attributes.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool LICMPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  memAcc = getAnalysis<MemAccAnalysis>(F);

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
    for (auto *block : loop->getBlocks()) {
      for (Instruction *I : incChange(*block)) {

        if (isInvariant(I, loop)) {
          I->removeFromBB();
          preheader->termEnd().insertBefore(I);
        }
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

bool LICMPass::isTriviallyInvariant(Instruction *I, Loop *L) {
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

bool LICMPass::isInvariant(Instruction *I, Loop *L) {
  if (auto *SI = mayCast<StoreInst>(I))
    return isInvariantStore(SI, L);

  if (auto *LI = mayCast<LoadInst>(I))
    return isInvariantLoad(LI, L);

  return isTriviallyInvariant(I, L);
}

bool LICMPass::isInvariantStore(StoreInst *SI, Loop *L) {
  if (!isOperandsInvariant(SI, L))
    return false;
  bool hasClobber = false;

  // TODO: check read clobber
  for (auto *BB : L->getBlocks()) {
    if (memAcc->hasWriteClobberInBlock(SI, BB)) {
      hasClobber = true;
      break;
    }
  }

  return false;
}

bool LICMPass::isInvariantLoad(LoadInst *LI, Loop *L) {
  if (!isOperandsInvariant(LI, L))
    return false;

  bool hasClobber = false;

  // TODO: check read clobber
  for (auto *BB : L->getBlocks()) {
    if (memAcc->hasWriteClobberInBlock(LI, BB)) {
      hasClobber = true;
      break;
    }
  }

  return !hasClobber;
}
