#include "StackElim.h"
#include "ADT/Ranges.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include <deque>

using namespace nnvm;

bool StackElimPass::run(Function &F) {
  bool changed = false;

  for (auto *I : *F.getEntry()) {
    StackInst *SI = mayCast<StackInst>(I);
    if (!SI)
      break;
    changed |= processStack(SI);
  }

  return changed;
}

static inline void recursivelyErase(Instruction *I) {
  std::vector<Instruction *> users;
  for (auto *U : incChange(I->users()))
    users.push_back(U->getUser());

  I->eraseFromBB();

  for (auto *user : users)
    if (user->users().empty())
      user->eraseFromBB();
}

bool StackElimPass::processStack(StackInst *stack) {
  bool changed = false;

  std::deque<Value *> worklist;
  std::set<StoreInst *> stores;
  bool loaded = false;
  bool addressTaken = false;
  worklist.push_back(stack);

  while (!worklist.empty()) {
    Value *cur = worklist.back();
    worklist.pop_back();

    if (cur->isa<StackInst>() || cur->isa<PtrAddInst>()) {
      for (Use *U : cur->users())
        worklist.push_back(U->getUser());
      continue;
    }

    if (auto *SI = mayCast<StoreInst>(cur)) {
      if (SI->getStoredValue() != stack) {
        stores.insert(SI);
        continue;
      }
    }

    if (auto *LI = mayCast<LoadInst>(cur)) {
      loaded = true;
      continue;
    }

    addressTaken = true;
    break;
  }

  if (addressTaken)
    return false;

  if (!loaded && !stores.empty()) {
    for (auto *store : stores)
      recursivelyErase(store);
    changed = true;
  }

  return changed;
}
