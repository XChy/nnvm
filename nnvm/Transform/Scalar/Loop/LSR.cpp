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

  //std::cout << mul->dump();

  Value *lhs = mul->getLHS();
  ConstantInt *rhs = mayCast<ConstantInt>(mul->getRHS());
  if (!rhs)
    return false;

  //std::cout << "OK1\n";
  //std::cout << lhs->dump();
  ScevValue *lhsScev = scev->analyze(lhs, loop);
  if (!lhsScev)
    return false;

  //std::cout << "OK\n";

  if (lhsScev->isRec() && lhsScev->getOperation() == InstID::Add &&
      lhsScev->getStartValue()->asInt() && lhsScev->getStep()->asInt()) {
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

  return true;
}
