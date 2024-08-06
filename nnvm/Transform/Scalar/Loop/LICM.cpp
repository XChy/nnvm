#include "LICM.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/PostDomTreeAnalysis.h"
#include "IR/Attributes.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool LICMPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  memAcc = getAnalysis<MemAccAnalysis>(F);
  postDomTree = getAnalysis<PostDomTreeAnalysis>(F);
  domTree = LA->getDomTree();

  auto loops = LA->getLoops();
  for (Loop *loop : loops) {
    BasicBlock *preheader = loop->getPreheader();

    // We have to hoist code to the preheader.
    if (!preheader)
      continue;

    for (auto *block : loop->getBlocks()) {
      for (Instruction *I : incChange(*block)) {
        if (isInvariant(I, loop) &&
            postDomTree->dom(block, loop->getHeader())) {
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
  if (I->isa<PhiNode>())
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

    if (!domTree->rdom(SI->getBlock(), BB) &&
        memAcc->hasReadClobberInBlock(SI, BB)) {
      hasClobber = true;
      break;
    }
  }

  return !hasClobber;
}

bool LICMPass::isInvariantLoad(LoadInst *LI, Loop *L) {
  if (!isOperandsInvariant(LI, L))
    return false;

  bool hasClobber = false;

  for (auto *BB : L->getBlocks()) {
    if (memAcc->hasWriteClobberInBlock(LI, BB)) {
      hasClobber = true;
      break;
    }
  }

  return !hasClobber;
}
