#include "AliasAnalysis.h"

using namespace nnvm;

bool AliasAnalysis::run(Function &F) { return true; }

AAFlag AliasAnalysis::alias(Value *a, Value *b) { return BAA.alias(a, b); }

static Value *getAccessedObj(Instruction *a) {
  if (auto *SI = mayCast<StoreInst>(a)) {
  }
  return nullptr;
}

AAFlag AliasAnalysis::alias(Instruction *a, Instruction *b) {}
