#include "LoopUtils.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"

using namespace nnvm;

bool nnvm::canonicalizeLoop(Loop *loop) {
  auto *header = loop->getHeader();
  auto *func = header->getParent();
  IRBuilder builder;
  if (!loop->getPreheader()) {
    auto *preheader = new BasicBlock(func, header->getName() + "_preheader");
    builder.insertAt(preheader->end());

    auto latches = loop->getLatches();
    std::set<BasicBlock *> nonlatches;
    for (auto *pred : header->getPredRange())
      if (!latches.count(pred))
        nonlatches.insert(pred);

    // copy phis from header to preheader.
    for (auto *inst : *header) {
      PhiInst *phi = mayCast<PhiInst>(inst);
      if (!phi)
        break;

      PhiInst *preheaderPhi =
          builder.buildPhi(phi->getType(), phi->getName() + "_ph_val");

      for (auto *nonlatch : nonlatches) {
        preheaderPhi->addIncoming(nonlatch, phi->getIncomingValueOf(nonlatch));
        phi->removeIncoming(nonlatch);
      }
      phi->addIncoming(preheader, preheaderPhi);
    }

    // Redirecting non-latch predecessors.
    builder.buildBr(header);
    header->replaceSelfIf(preheader, [&](Use *U) -> bool {
      return nonlatches.count(U->getUser()->getBlock());
    });
    func->insertBefore(preheader, header);
  }

  return false;
}

std::optional<LoopBoundInfo> nnvm::analyzeLoopBound(Loop *loop, SCEV *scev) {
  // Only analyze single-exit loop.
  if (loop->getExitEdges().size() != 1)
    return {};

  BasicBlock *exiting = loop->getExitEdges().front().from;
  BasicBlock *exit = loop->getExitEdges().front().to;

  BranchInst *exitBranch = cast<BranchInst>(exiting->getTerminator());
  ICmpInst *cmp = mayCast<ICmpInst>(exitBranch->getCondition());

  if (!cmp || !cmp->getOperand(1)->isConstant())
    return {};

  // TODO: Invert the predicate if needed.
  auto pred = cmp->getPredicate();
  ScevValue *indSCEV = scev->analyze(cmp->getOperand(0), loop);

  if (!indSCEV)
    return {};

  auto *bound = cast<ConstantInt>(cmp->getOperand(1));

  LoopBoundInfo ret;
  ret.indvar = indSCEV;
  ret.tripCount = indSCEV->iterations(pred, bound);
  return ret;
}
