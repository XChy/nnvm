#include "LoopUtils.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/BlockUtils.h"
#include <algorithm>

using namespace nnvm;

static bool unifyLatches(Loop *loop) {
  auto *header = loop->getHeader();
  Function *func = header->getParent();
  IRBuilder builder;

  if (loop->getLatches().size() > 1) {
    auto *newLatch = new BasicBlock(func, header->getName() + "_unified_latch");
    auto oldLatches = loop->getLatches();

    // Only allow uncondtional latches.
    if (std::any_of(oldLatches.begin(), oldLatches.end(),
                    [&](BasicBlock *latch) {
                      auto *br = mayCast<BranchInst>(latch->getTerminator());
                      return !br || br->isConditional();
                    }))
      return false;

    // Jump to header indirectly.
    for (auto *latch : oldLatches)
      latch->getTerminator()->replaceOps(SingleMapper(header, newLatch));

    // New latch jumps to header directly
    builder.insertAt(newLatch->end());
    builder.buildBr(header);

    auto headerPhis = header->getPhis();

    builder.insertAt(newLatch->begin());
    for (auto *phi : headerPhis) {
      PhiNode *newLatchPhi = builder.buildPhi(phi->getType());
      for (auto *oldLatch : oldLatches) {
        newLatchPhi->addIncoming(oldLatch, phi->getIncomingValueOf(oldLatch));
        phi->removeIncoming(oldLatch);
      }
      phi->addIncoming(newLatch, newLatchPhi);
    }

    return true;
  }
  return false;
}

bool nnvm::canonicalizeLoop(Loop *loop) {
  auto *header = loop->getHeader();
  auto *func = header->getParent();
  IRBuilder builder;

  // Unify latches
  unifyLatches(loop);

  // Create preheader.
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
      PhiNode *phi = mayCast<PhiNode>(inst);
      if (!phi)
        break;

      PhiNode *preheaderPhi =
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

  // Create exclusive exit.
  if (loop->getSingleEdgedExit() && !loop->getExclusiveExit()) {
    auto *oldExit = loop->getSingleEdgedExit();
    auto *newExit = new BasicBlock(func, header->getName() + "_exclu_exit");

    builder.insertAt(newExit->end());
    builder.buildBr(oldExit);

    for (auto [exiting, _] : loop->getExitEdges()) {
      exiting->getTerminator()->replaceOps(
          [&](Value *v) { return v == oldExit ? newExit : nullptr; });

      for (auto *I : *oldExit) {
        auto *phi = mayCast<PhiNode>(I);
        if (!phi)
          break;
        BasicBlock *oldIncoming = exiting;
        phi->replaceOps(
            [&](Value *v) { return v == oldIncoming ? newExit : nullptr; });
      }
    }
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

  if (exitBranch->getSuccNum() != 2)
    return {};

  ICmpInst *cmp = mayCast<ICmpInst>(exitBranch->getCondition());

  if (!cmp)
    return {};

  auto pred = cmp->getPredicate();
  Value *lhs = cmp->getOperand(0);
  Value *rhs = cmp->getOperand(1);

  if (exitBranch->getSucc(0) == exit)
    pred = ICmpInst::invertPred(pred);

  if (!rhs->isConstant())
    return {};

  // FIXME: Invert the predicate if needed.
  ScevValue *indSCEV = scev->analyze(lhs, loop);

  if (!indSCEV)
    return {};

  auto *bound = cast<ConstantInt>(rhs);

  LoopBoundInfo ret;
  ret.indvar = indSCEV;
  ret.tripCount = indSCEV->iterations(pred, bound);
  return ret;
}

bool nnvm::isDefinedOutside(Value *value, Loop *loop) {
  if (value->isInstruction())
    return !loop->contains(cast<Instruction>(value)->getBlock());
  return true;
}
