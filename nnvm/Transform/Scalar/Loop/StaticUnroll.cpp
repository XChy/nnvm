#include "StaticUnroll.h"
#include "ADT/Hash.h"
#include "IR/IRBuilder.h"
#include "LoopUtils.h"

using namespace nnvm;

bool StaticUnrollPass::run(Function &F) {
  LA = getAnalysis<LoopAnalysis>(F);
  scev = getAnalysis<SCEV>(F);

  bool changed = false;
  for (Loop *loop : LA->getLoops())
    changed |= unroll(loop);
  return changed;
}

bool isProfitable(Loop *loop, uint64_t tripCount) {
  constexpr int maxInstruction = 1024;
  constexpr int maxBlocks = 8;
  if (loop->getBlocks().size() > maxBlocks)
    return false;

  uint64_t totalInst = 0;
  for (auto *block : loop->getBlocks())
    totalInst += block->getInsts().size();
  if (totalInst * tripCount > maxInstruction)
    return false;

  return true;
}

bool StaticUnrollPass::unroll(Loop *loop) {
  if (!loop->getChildren().empty())
    return false;

  if (loop->getExitEdges().size() != 1)
    return false;

  BasicBlock *latch = loop->getSingleLatch();
  BasicBlock *header = loop->getHeader();
  BasicBlock *preheader = loop->getPreheader();
  BasicBlock *exit = *loop->getExits().begin();

  if (!preheader || !latch || !loop->isExiting(latch))
    return false;

  std::optional<LoopBoundInfo> boundInfo = analyzeLoopBound(loop, scev);

  if (!boundInfo || !boundInfo->tripCount.has_value())
    return false;

  uint64_t tripCount = *boundInfo->tripCount;

  if (!isProfitable(loop, tripCount))
    return false;

  (std::cerr << "Unrolling loop " << header->getName() << "\n");

  IRBuilder builder;

  std::set<BasicBlock *> originalBlocks = loop->getBlocks();
  BasicBlock *lastLatch = latch;
  Function *F = header->getParent();

  std::unordered_map<Value *, Value *> replaceMap;
  std::unordered_map<PhiNode *, Value *> nextValueOf;
  std::unordered_map<PhiNode *, Value *> currentValueForPhi;
  std::unordered_set<BasicBlock *> duplicatedBlock;

  for (auto *I : *header) {
    auto *phi = mayCast<PhiNode>(I);
    if (!phi)
      break;
    currentValueForPhi[phi] = phi->getIncomingValueOf(latch);
    nextValueOf[phi] = phi->getIncomingValueOf(latch);

    phi->removeIncoming(latch);
  }

  // Duplicate every iteration.
  for (int i = 1; i < tripCount; i++) {
    replaceMap.clear();

    // Copy blocks and instructions
    for (auto *block : originalBlocks) {
      auto newBBName = block->getName() + ".iter" + std::to_string(i);
      BasicBlock *newBB = new BasicBlock(F, newBBName);
      replaceMap[block] = newBB;
      duplicatedBlock.insert(newBB);

      for (auto *I : *block) {
        Instruction *newInst = I->copyWithName();
        replaceMap[I] = newInst;
        newBB->end().insertBefore(newInst);
      }
    }

    // Replace inner uses
    for (auto *block : originalBlocks)
      for (auto *I : *cast<BasicBlock>(replaceMap[block]))
        I->replaceOps([&](Value *v) { return replaceMap[v]; });

    // Fix phis and branch
    BasicBlock *newHeader = cast<BasicBlock>(replaceMap[header]);
    BasicBlock *newLatch = cast<BasicBlock>(replaceMap[latch]);

    // Replace the conditonal branch in last latch with direct jump to new
    // header.
    lastLatch->getTerminator()->eraseFromBB();
    builder.insertAt(lastLatch->end());
    builder.buildBr(newHeader);

    for (auto *I : *header) {
      if (!I->isa<PhiNode>())
        break;
      auto *originalPhi = cast<PhiNode>(I);
      auto *phi = cast<PhiNode>(replaceMap[I]);

      phi->addIncoming(lastLatch, currentValueForPhi[originalPhi]);
      phi->removeIncoming(preheader);

      Value *nextValue = nextValueOf[originalPhi];
      if (nextValue->isInstruction() &&
          loop->contains(cast<Instruction>(nextValue)->getBlock())) {
        nextValue = replaceMap[nextValue];
      }

      currentValueForPhi[originalPhi] = nextValue;
    }

    lastLatch = newLatch;
  }

  // Redirect last iteration to exit.
  lastLatch->getTerminator()->eraseFromBB();
  builder.insertAt(lastLatch->end());
  builder.buildBr(exit);

  // Fix phis at exit
  for (auto *I : *exit) {
    auto *phi = mayCast<PhiNode>(I);
    if (!phi)
      break;
    Value *oldValue = phi->getIncomingValueOf(latch);
    if (oldValue->isInstruction() &&
        loop->contains(cast<Instruction>(oldValue)->getBlock())) {
      oldValue = replaceMap[oldValue];
    }
    phi->addIncoming(lastLatch, oldValue);
    phi->removeIncoming(latch);
  }

  // Replace outer uses
  for (auto *I : *header) {
    I->replaceSelfIf(replaceMap[I], [&](Use *U) {
      auto *defBlock = U->getUser()->getBlock();
      return !loop->contains(defBlock) && !duplicatedBlock.count(defBlock);
    });
  }

  return true;
}
