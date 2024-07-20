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

enum AccessFlag { MemUse, MemDef, MemClobber };

struct AccessInfo {
  Instruction *accessInst;
  AccessFlag flag;
};

class MemAccAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  AccessInfo getDomMemDef(Instruction *I);
  AccessInfo getDomMemUse(Instruction *I);

private:
};
} /* namespace nnvm */
