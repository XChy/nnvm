/**
 * GVN: Global Value Numbering
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class GVNHoistPass : public FunctionPass {
public:
  static constexpr const char *passName = "gvn-hoist";
  bool run(Function &F);
  void assignNumbers(Function &F);
  void hoist();

private:
  struct HashInstImpl {
    size_t operator()(Instruction *I) const;
  };

  struct EqInstImpl {
    bool operator()(Instruction *A, Instruction *B) const;
  };

  DomTreeAnalysis *domTree;

  std::unordered_map<Instruction *, uint64_t, HashInstImpl, EqInstImpl>
      numberOf;

  std::unordered_map<uint64_t, std::vector<Instruction *>> instsOf;

  uint64_t currentMaxNumber;
};
} /* namespace nnvm */
