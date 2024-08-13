// =======================================================================
// AliasAnalysis: to analyze whether two pointer points to the same underlying
// object.
// =======================================================================

#pragma once

#include "Analysis/AAInfo.h"
#include "Analysis/BasicAA.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {

static inline Value *getAccessedPtr(const Instruction *a) {
  if (auto *SI = mayCast<StoreInst>(a))
    return SI->getDest();
  if (auto *LI = mayCast<LoadInst>(a))
    return LI->getSrc();
  return nullptr;
}

static inline MemObj getAccessedObj(const Instruction *a) {
  MemObj ret;
  if (auto *SI = mayCast<StoreInst>(a))
    ret = {SI->getDest(), 0, SI->getStoredValue()->getType()->getStoredBytes()};
  else if (auto *LI = mayCast<LoadInst>(a))
    ret = {LI->getSrc(), 0, LI->getType()->getStoredBytes()};
  else
    return MemObj(nullptr);
  ret.normalize();
  return ret;
}

class AliasAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  AAFlag alias(Value *a, Value *b);
  bool mayAlias(Value *a, Value *b) { return alias(a, b) == MayAlias; }

  AAFlag alias(MemObj a, MemObj b);

  AAFlag alias(const Instruction *a, const Instruction *b);

private:
  BasicAA BAA;
};
} /* namespace nnvm */
