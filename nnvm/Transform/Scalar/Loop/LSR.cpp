#include "LSR.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"
#include "LoopUtils.h"

using namespace nnvm;

bool LSRPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  scev = getAnalysis<SCEV>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops()) {
    if (!loop->getSingleLatch() || !loop->getPreheader())
      continue;

    for (auto *block : loop->getBlocks())
      for (auto *I : incChange(*block))
        changed |= processInst(I, loop);
  }

  return changed;
}

bool LSRPass::processInst(Instruction *I, Loop *loop) {
  auto *preheader = loop->getPreheader();
  auto *header = loop->getHeader();
  auto *latch = loop->getSingleLatch();

  assert(latch);

  MulInst *mul = mayCast<MulInst>(I);
  if (!mul)
    return false;

  Value *lhs = mul->getLHS();

  ScevValue *lhsScev = scev->analyze(lhs, loop);
  if (!lhsScev)
    return false;

  if (lhsScev->isRec() && lhsScev->getOperation() == InstID::Add &&
      lhsScev->getStartValue()->asInt() && lhsScev->getStep()->asInt()) {

    // (C1, +, C2) * C3 --> (C1 * C3, +, C2 * C3)
    if (ConstantInt *rhs = mayCast<ConstantInt>(mul->getRHS())) {
      builder.insertAt(header->normalBegin());
      PhiNode *phi = builder.buildPhi(mul->getType());

      auto *start = lhsScev->getStartValue()->asInt()->mul(rhs);
      auto *step = lhsScev->getStep()->asInt()->mul(rhs);

      builder.insertAt(latch->termEnd());
      Value *stepAdd = builder.buildBinOp<AddInst>(phi, step, mul->getType(),
                                                   mul->getName() + ".rec");

      phi->addIncoming(preheader, start);
      phi->addIncoming(latch, stepAdd);
      mul->replaceSelf(phi);
      mul->eraseFromBB();
    }
    // (0, +, 1) * V --> (0, +, V)
    else if (lhsScev->getStartValue()->asInt()->isZero() &&
             lhsScev->getStep()->asInt()->isOne() &&
             isDefinedOutside(mul->getRHS(), loop)) {
      auto *rhs = mul->getRHS();
      builder.insertAt(header->normalBegin());
      PhiNode *phi = builder.buildPhi(mul->getType());

      auto *start = lhsScev->getStartValue()->asInt();
      auto *step = rhs;

      builder.insertAt(latch->termEnd());
      Value *stepAdd = builder.buildBinOp<AddInst>(phi, step, mul->getType(),
                                                   mul->getName() + ".rec");

      phi->addIncoming(preheader, start);
      phi->addIncoming(latch, stepAdd);
      mul->replaceSelf(phi);
      mul->eraseFromBB();
    } else {
      return false;
    }
  }

  return true;
}
