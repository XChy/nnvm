#include "LoopLoadStorePair.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"
#include "LoopUtils.h"
#include "Transform/Infra/BlockUtils.h"

using namespace nnvm;

bool LoopLoadStorePairPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  AA = getAnalysis<AliasAnalysis>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= eliminateIn(loop);
  return changed;
}

bool LoopLoadStorePairPass::eliminateIn(Loop *loop) {
  if (!loop->getChildren().empty())
    return false;

  auto *preheader = loop->getPreheader();
  auto *header = loop->getHeader();
  auto *latch = loop->getSingleLatch();
  auto *exit = loop->getExclusiveExit();

  // We only handle single basic block now. TODO: handle it generally.
  if (!preheader || !latch || !exit || latch != header)
    return false;

  std::vector<std::pair<LoadInst *, StoreInst *>> candidates;
  // Scan forward for load, and then find the store for it. Early exit if any
  // clobber appears.
  for (auto *I : *header) {
    if (!I->isa<LoadInst>())
      continue;

    LoadInst *load = cast<LoadInst>(I);
    StoreInst *store = nullptr;

    if (isDefinedOutside(load->getSrc(), loop))
      continue;

    List<Instruction>::Iterator begin = load->getNext();
    List<Instruction>::Iterator end = header->getTerminator();
    auto found = std::find_if(begin, end, [&](const Instruction *I) {
      if (auto *storeInst = mayCast<StoreInst>(I))
        if (storeInst->getDest() == load->getSrc() &&
            storeInst->getStoredValue()->getType() == load->getType())
          return true;
      return false;
    });

    if (found == end)
      continue;

    store = (StoreInst *)(*found);

    auto clobber = std::find_if(begin, end, [&](const Instruction *I) {
      if (I == load || I == store)
        return false;

      if (I->mayReadMemory() || I->mayWriteToMemory())
        return AA->alias(I, load) != NotAlias;

      return false;
    });

    if (clobber != end)
      continue;

    candidates.push_back({load, store});
  }

  IRBuilder builder;
  for (auto [load, store] : candidates) {
    // Insert load before loop.
    builder.insertAt(preheader->termEnd());
    Value *loadBeforeLoop = builder.buildLoad(load->getSrc(), load->getType(),
                                              load->getName() + "_ahead");

    // Insert phi at header
    builder.insertAt(header->begin());
    auto phi = builder.buildPhi(load->getType(), load->getName() + "_phi_loop");
    phi->addIncoming(preheader, loadBeforeLoop);
    phi->addIncoming(latch, store->getStoredValue());

    // Move store at exit
    moveInstBefore(store, exit->normalBegin());

    load->replaceSelf(phi);
    load->eraseFromBB();
  }

  return true;
}
