// =======================================================================
// AliasAnalysis: to analyze whether two pointer points to the same underlying
// object.
// =======================================================================

#pragma once

#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {
class AliasAnalysis : public FunctionPass {
public:
  bool run(Function &F);

private:
};
} /* namespace nnvm */
