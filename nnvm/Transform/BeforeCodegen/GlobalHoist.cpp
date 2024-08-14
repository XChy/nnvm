#include "GlobalHoist.h"
#include "ADT/GenericInt.h"
#include "Analysis/LoopAnalysis.h"
#include "IR/Constant.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Platform/Platform.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <cmath>

using namespace nnvm;

void GlobalHoistPass::gatherUses(Function &F) {
  Platform *platform = F.getModule()->getPlatform();

  for (auto *BB : F) {
    for (auto *I : *BB) {
      for (auto *use : I->getUseeList()) {
        Value *usee = use->getUsee();

        if (auto *constant = mayCast<Constant>(usee))
          if (platform->isExpensiveToLoadConstant(constant))
            constantUses[usee].push_back(use);

        if (auto *global = mayCast<GlobalVariable>(usee))
          if (platform->isExpensiveToLoadGlobalAddress(global))
            constantUses[usee].push_back(use);
      }
    }
  }
}

bool GlobalHoistPass::hoistUseesToEntry(Function &F) {
  IRBuilder builder;
  builder.insertAt(F.getEntry()->normalBegin());

  for (auto &[usee, uses] : constantUses) {
    auto *pinned = builder.buildPin(usee, usee->getName() + ".pinned");
    for (Use *use : uses)
      use->set(pinned);
  }

  return true;
}

void GlobalHoistPass::hoistToCommonDom(Value *usee,
                                       const std::vector<Use *> &uses) {
  BasicBlock *commonDom = nullptr;

  // Find common dominator
  for (Use *use : uses) {
    auto *userBlock = use->getUser()->getBlock();

    // We have to hoist to the immediate dominator at usesite of phi
    if (use->getUser()->isa<PhiNode>())
      userBlock = domTree->getIDom(userBlock);

    if (!commonDom) {
      commonDom = userBlock;
      continue;
    }

    commonDom = domTree->getCommonDom(commonDom, userBlock);
  }

  if (Loop *loop = LA->findLoopFor(commonDom))
    if (loop->getPreheader())
      commonDom = loop->getPreheader();

  IRBuilder builder;
  builder.insertAt(commonDom->normalBegin());
  auto *pinned = builder.buildPin(usee, usee->getName() + ".pinned");
  for (Use *use : uses)
    use->set(pinned);
}

bool GlobalHoistPass::hoistUsees(Function &F) {
  bool changed = false;
  IRBuilder builder;

  constexpr size_t maxHoistToEntry = 3;

  if (constantUses.size() == 0)
    return false;

  for (auto &[usee, uses] : constantUses) {
    if (uses.size() <= 1)
      continue;

    if ((uses.size() == 1 &&
         LA->findLoopFor(uses.front()->getUser()->getBlock())) ||
        uses.size() > 1) {
      hoistToCommonDom(usee, uses);
      changed = true;
    }
  }

  return changed;
}

bool GlobalHoistPass::run(Function &F) {
  domTree = getAnalysis<DomTreeAnalysis>(F);
  LA = getAnalysis<LoopAnalysis>(F);

  gatherUses(F);
  return hoistUsees(F);
}
