/**
 * LoopLoadStorePair: eliminiate load-store pair inside loops.
 * For example:
 * for (int i = 0; i < n; i++) {
 *   global[0] = global[0] + 1;
 * }
 * -->
 * int mid = global[0];
 * for (int i = 0; i < n; i++) {
 *   mid = mid + 1;
 * }
 * global[0] = mid;
 */

#pragma once

#include "Analysis/AliasAnalysis.h"
#include "Analysis/LoopAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class LoopLoadStorePairPass : public FunctionPass {
public:
  static constexpr const char *passName = "loop-ls-pair";
  bool run(Function &F);
  bool eliminateIn(Loop *loop);

private:
  LoopAnalysis *LA;
  AliasAnalysis *AA;
};
} /* namespace nnvm */
