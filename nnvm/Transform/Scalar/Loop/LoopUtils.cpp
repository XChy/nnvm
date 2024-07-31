#include "LoopUtils.h"
#include "IR/IRBuilder.h"

using namespace nnvm;

bool nnvm::canonicalizeLoop(Loop *loop) {
  auto *header = loop->getHeader();
  auto *func = header->getParent();
  IRBuilder builder;
  if (!loop->getPreheader()) {
    auto *preheader = new BasicBlock(func, header->getName() + "_preheader");
    builder.setInsertPoint(preheader->end());

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
