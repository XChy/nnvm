// =======================================================================
// AliasAnalysis: to analyze whether two pointer points to the same underlying
// object.
// =======================================================================

#pragma once

#include "Analysis/AAInfo.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {

class AliasAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  AAFlag alias(Value *a, Value *b);
  bool mayAlias(Value *a, Value *b) { return alias(a, b) == MayAlias; }

private:
};
} /* namespace nnvm */
