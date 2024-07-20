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

static inline Value *getAccessedObj(Instruction *a) {
  if (auto *SI = mayCast<StoreInst>(a))
    return SI->getDest();
  if (auto *LI = mayCast<LoadInst>(a))
    return LI->getSrc();
  return nullptr;
}

class AliasAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  AAFlag alias(Value *a, Value *b);
  bool mayAlias(Value *a, Value *b) { return alias(a, b) == MayAlias; }

  AAFlag alias(Instruction *a, Instruction *b);

private:
  BasicAA BAA;
};
} /* namespace nnvm */
