#include "TailElim.h"
#include <map>

using namespace nnvm;

static inline bool isCandidate(Function &F, std::vector<RetInst *> &retsites,
                               std::vector<CallInst *> &callsites) {
  // TODO: handle void function.
  if (F.getReturnType()->isVoid())
    return false;

  for (auto *BB : F) {
    auto *ret = mayCast<RetInst>(BB->getTerminator());
    if (!ret)
      continue;

    auto *callsite = mayCast<CallInst>(ret->getOperand(0));

    // Must be recursive!!
    if (!callsite || callsite->getFuncCallee() != &F)
      continue;

    // Must be consecutive!
    if (callsite->getBlock() != ret->getBlock() || ret->getPrev() != callsite)
      continue;

    retsites.push_back(ret);
    callsites.push_back(callsite);
  }

  return !callsites.empty();
}

bool TailElimPass::run(Function &F) {
  std::vector<RetInst *> retsites;
  std::vector<CallInst *> callsites;
  if (!isCandidate(F, retsites, callsites))
    return false;

  // Before:
  //   entry:
  //   xxx
  // After:
  //   entry:
  //   br loop_entry
  //   loop_entry
  //   phi args

  IRBuilder builder;

  // Create loop entry and move instructions from entry to loop entry.
  BasicBlock *entry = F.getEntry();
  BasicBlock *loopEntry = new BasicBlock(&F, "loop_entry");
  F.insertBack(loopEntry, entry);
  entry->replaceSelf(loopEntry);

  for (auto *I : incChange(*entry)) {
    if (I->isa<StackInst>())
      continue;
    I->moveTo(loopEntry);
  }

  builder.setInsertPoint(entry->end());
  builder.buildBr(loopEntry);

  // Build phi for arguments
  builder.setInsertPoint(loopEntry->begin());
  std::map<Argument *, PhiInst *> arg2Phi;
  for (Argument *arg : F.getArguments()) {
    PhiInst *phi = builder.buildPhi(arg->getType(), arg->getName() + ".loop");
    arg->replaceSelf(phi);
    arg2Phi[arg] = phi;

    phi->addIncoming(entry, arg);
  }

  for (int i = 0; i < retsites.size(); i++) {
    RetInst *ret = retsites[i];
    CallInst *callsite = callsites[i];
    auto *callsiteBB = callsite->getBlock();
    builder.setInsertPoint(callsiteBB->end());
    builder.buildBr(loopEntry);
    ret->eraseFromBB();

    assert(callsite->users().empty());

    uint argIndex = 0;
    for (Argument *arg : F.getArguments()) {
      PhiInst *phi = arg2Phi[arg];
      phi->addIncoming(callsiteBB, callsite->getArg(argIndex));
      argIndex++;
    }

    callsite->eraseFromBB();
  }

  return true;
}
