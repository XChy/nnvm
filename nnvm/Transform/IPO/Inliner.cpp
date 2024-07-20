#include "Inliner.h"
#include "ADT/Ranges.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"

using namespace nnvm;

bool InlinerPass::run(Module &M) {
  bool inlined = true;
  int inlinedTimes = 0;
  while (inlined && inlinedTimes < 4) {
    inlined = false;
    inlined |= tryInline(M);
    inlinedTimes++;
  }

  return true;
}

bool InlinerPass::tryInline(Module &M) {
  bool changed = false;
  for (auto [_, F] : M.getFunctionMap()) {
    if (F->isExternal() || F->getBBList().size() > 32)
      continue;

    for (Use *U : incChange(F->users())) {
      CallInst *CI = mayCast<CallInst>(U->getUser());
      // Don't inline recursive function.
      if (!CI || CI->getBlock()->getParent() == F)
        break;
      inlineCall(CI);
      changed = true;
    }
  }
  return changed;
}

void InlinerPass::inlineCall(CallInst *callsite) {
  BasicBlock *callsiteBlock = callsite->getBlock();
  Function *caller = callsiteBlock->getParent();
  Function *callee = cast<Function>(callsite->getCallee());
  assert(caller != callee && "Don't inline recursive function");

  BasicBlock *inlinedEntry;
  std::vector<BasicBlock *> inlinedExits;
  BasicBlock *inlinedExitMergePoint;

  splitBlockAt(callsiteBlock, callsite, inlinedExitMergePoint);

  std::unordered_map<Value *, Value *> valueMap;

  // Copy function body and map values
  auto callerArgs = callee->getArguments();
  for (size_t i = 0; i < callerArgs.size(); i++)
    valueMap[callerArgs[i]] = callsite->getArg(i);

  for (auto *calleeBB : *callee) {
    BasicBlock *inlinedBB =
        new BasicBlock(caller, callee->getName() + "." + calleeBB->getName());
    valueMap[calleeBB] = inlinedBB;

    if (calleeBB == callee->getEntry())
      inlinedEntry = inlinedBB;
    if (calleeBB->getTerminator()->isa<RetInst>())
      inlinedExits.push_back(inlinedBB);

    // Copy instructions.
    for (Instruction *I : *calleeBB) {
      auto *copied = I->copyWithName();
      if (I->isa<StackInst>())
        caller->getEntry()->begin().insertBefore(copied);
      else
        inlinedBB->end().insertBefore(copied);
      valueMap[I] = copied;
    }
  }

  auto replacer = [&](Value *callerValue) {
    callerValue->replaceSelfIf(valueMap[callerValue], [&](Use *U) -> bool {
      return U->getUser()->getBlock()->getParent() == caller;
    });
  };

  // Replace uses
  for (auto *arg : callee->getArguments())
    replacer(arg);
  for (auto *calleeBB : *callee) {
    replacer(calleeBB);
    // Copy instructions.
    for (Instruction *I : *calleeBB) {
      replacer(I);
    }
  }

  // Connect inlined entry, and inlined exit
  IRBuilder builder;
  builder.setInsertPoint(callsiteBlock->end());
  builder.buildBr(inlinedEntry);

  PhiInst *inlinedRetVal = nullptr;
  if (!callsite->getType()->isVoid()) {
    builder.setInsertPoint(inlinedExitMergePoint->begin());
    inlinedRetVal =
        builder.buildPhi(callsite->getType(), callsite->getName() + ".ret");
    callsite->replaceSelf(inlinedRetVal);
  }

  for (auto *inlinedExit : inlinedExits) {
    RetInst *inlinedRet = cast<RetInst>(inlinedExit->getTerminator());

    if (!callsite->getType()->isVoid())
      inlinedRetVal->addIncoming(inlinedExit, inlinedRet->getOperand(0));

    inlinedRet->eraseFromBB();
    builder.setInsertPoint(inlinedExit->end());
    builder.buildBr(inlinedExitMergePoint);
  }

  callsite->eraseFromBB();
}
