#include "ADT/Graph.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/UBValue.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <Transform/Scalar/Mem2Reg.h>
#include <set>
#include <stack>
#include <vector>

using namespace nnvm;

Mem2RegPass::DFMap Mem2RegPass::computeDF(Function &F) {
  DFMap DF;
  for (BasicBlock *BB : F) {
    for (size_t i = 0; i < BB->getSuccNum(); i++) {
      BasicBlock *succ = BB->getSucc(i);
      BasicBlock *cur = BB;
      while (cur && !domTree->dom(cur, succ)) {
        DF[cur].push_back(succ);
        cur = domTree->getIDom(cur);
      }
    }
  }
  return DF;
}

bool Mem2RegPass::run(Function &F) {
  bool changed = false;

  domTree = getAnalysis<DomTreeAnalysis>(F);

  std::vector<StackInst *> stackToRemove;
  for (Instruction *I : incChange(*F.getEntry())) {
    StackInst *SI = mayCast<StackInst>(I);
    // We assume that all the stack instructions are declared at the beginning
    // of the entry block.
    if (!SI)
      break;

    bool promotable = true;
    Type *valueType;
    std::set<BasicBlock *> localDefBBs;
    std::set<BasicBlock *> localUseBBs;

    for (Use *use : SI->users()) {
      Instruction *user = use->getUser();

      if (auto *def = mayCast<StoreInst>(user)) {
        if (def->getDest() == SI) {
          valueType = def->getStoredValue()->getType();
          localDefBBs.insert(def->getBlock());
          continue;
        }
      }

      if (auto *use = mayCast<LoadInst>(user)) {
        localUseBBs.insert(use->getBlock());
        continue;
      }

      promotable = false;
      break;
    }

    if (!promotable)
      continue;

    // Clear unused stack.
    if (localUseBBs.empty()) {
      stackToRemove.push_back(SI);
      continue;
    }

    if (promotable) {
      candidates[SI].valueType = valueType;
      candidates[SI].defBBs = localDefBBs;
      candidates[SI].useBBs = localUseBBs;
    }
  }

  for (auto *SI : stackToRemove) {
    for (auto *user : incChange(SI->users()))
      user->getUser()->eraseFromBB();
    SI->eraseFromBB();
  }

  DFMapResult = computeDF(F);

  changed |= !candidates.empty();

  for (auto &[SI, info] : candidates)
    promote(SI);
  rename(F);

  for (auto &[SI, info] : candidates)
    SI->eraseFromBB();

  return changed;
}

void Mem2RegPass::insertPHIsFor(StackInst *SI) {
  std::unordered_set<BasicBlock *> visited;
  std::vector<BasicBlock *> containDefBBs(candidates[SI].defBBs.begin(),
                                          candidates[SI].defBBs.end());

  while (!containDefBBs.empty()) {
    BasicBlock *cur = containDefBBs.back();
    containDefBBs.pop_back();

    for (BasicBlock *frontier : DFMapResult[cur]) {

      IRBuilder builder;
      builder.insertAt(frontier->begin());

      if (visited.count(frontier))
        continue;

      auto phi =
          builder.buildPhi(candidates[SI].valueType, SI->getName() + ".phi");
      phi2Stack[phi] = SI;

      visited.insert(frontier);
      containDefBBs.push_back(frontier);
      // TODO: defBBs or def/phi of SI?
      if (!candidates[SI].defBBs.count(frontier))
        containDefBBs.push_back(frontier);
    }
  }
}

void Mem2RegPass::rename(Function &F) {
  Graph<BasicBlock *> graph;
  std::unordered_map<BasicBlock *, std::unordered_map<StackInst *, Value *>>
      incomingValuesMap;

  // Initialze incoming values as undefined values.
  for (auto [stack, info] : candidates)
    incomingValuesMap[F.getEntry()][stack] =
        UBValue::create(info.valueType)->refineDefault(*F.getModule());

  GraphVisitor::dfs(graph, F.getEntry(), [&](BasicBlock *BB) {
    std::unordered_map<StackInst *, Value *> &incomingValues =
        incomingValuesMap[BB];

    for (Instruction *I : incChange(*BB)) {
      if (auto *def = mayCast<StoreInst>(I)) {
        StackInst *dest = (StackInst *)def->getDest();
        if (!candidates.count(dest))
          continue;
        incomingValues[dest] = def->getStoredValue();
        def->eraseFromBB();
        continue;
      }

      if (auto *use = mayCast<LoadInst>(I)) {
        StackInst *src = (StackInst *)use->getSrc();
        if (!candidates.count(src))
          continue;
        use->replaceSelf(incomingValues[src]);
        use->eraseFromBB();
        continue;
      }

      if (auto *phi = mayCast<PhiNode>(I)) {
        if (!phi2Stack.count(phi))
          continue;
        incomingValues[phi2Stack[phi]] = phi;
        continue;
      }
    }

    for (size_t i = 0; i < BB->getSuccNum(); i++) {
      BasicBlock *succ = BB->getSucc(i);
      for (auto pair : incomingValuesMap[BB])
        incomingValuesMap[succ].insert(pair);
      for (Instruction *I : *succ) {

        if (PhiNode *phi = mayCast<PhiNode>(I)) {
          if (!phi2Stack.count(phi))
            continue;
          phi->addIncoming(BB, incomingValues[phi2Stack[phi]]);
          continue;
        }
        break;
      }
    }
  });
}

bool Mem2RegPass::promote(StackInst *SI) {
  insertPHIsFor(SI);
  return true;
}
