/**
 * GlobalHoist: Hoist expensive globals and constants
 */

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "Analysis/MemAccAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <map>

namespace nnvm {
class GlobalHoistPass : public FunctionPass {
public:
  static constexpr const char *passName = "global-hoist";
  bool run(Function &F);
  void gatherUses(Function &F);
  bool hoistUsees(Function &F);
  bool hoistUseesToEntry(Function &F);
  void hoistToCommonDom(Value *usee, const std::vector<Use *> &uses);

private:
  std::map<Value *, std::vector<Use *>> constantUses;
  DomTreeAnalysis *domTree;
  LoopAnalysis *LA;
};
} /* namespace nnvm */
