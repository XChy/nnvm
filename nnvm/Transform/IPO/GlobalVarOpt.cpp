#include "GlobalVarOpt.h"
#include "ADT/Ranges.h"
#include "Analysis/AAInfo.h"
#include "IR/Attributes.h"
#include "IR/Instruction.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool GlobalVarOptPass::run(Module &M) {
  bool changed = true;
  while (changed) {
    changed = false;
    auto globals = M.getGlobalVarMap();
    for (auto [name, global] : globals)
      changed |= processGlobalVar(global);

    for (auto *global : globalToRemove) {
      M.removeGlobalVar(global->getName());
      delete global;
    }
    globalToRemove.clear();
  }
  return true;
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

bool GlobalVarOptPass::processGlobalVar(GlobalVariable *global) {
  bool changed = false;
  if (!global->isAttached(Attribute::Internal))
    return false;

  std::deque<Value *> worklist;
  std::set<StoreInst *> stores;
  std::set<LoadInst *> loads;
  bool addressTaken = false;
  worklist.push_back(global);

  while (!worklist.empty()) {
    Value *cur = worklist.back();
    worklist.pop_back();

    if (cur->isa<GlobalVariable>() || cur->isa<PtrAddInst>()) {
      for (Use *U : cur->users())
        worklist.push_back(U->getUser());
      continue;
    }

    if (auto *SI = mayCast<StoreInst>(cur)) {
      if (SI->getStoredValue() != global) {
        stores.insert(SI);
        continue;
      }
    }

    if (auto *LI = mayCast<LoadInst>(cur)) {
      loads.insert(LI);
      continue;
    }

    addressTaken = true;
    break;
  }

  if (addressTaken)
    return false;

  if (loads.empty() && !stores.empty()) {
    changed = true;
    for (auto *store : stores)
      recursivelyErase(store);
  }

  if (stores.empty() && !global->isAttached(Attribute::Immutable)) {
    global->attach(Attribute::Immutable);
    changed = true;
  }

  if (global->users().empty()) {
    globalToRemove.push_back(global);
    return true;
  }

  return false;
}
