#pragma once

#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {
class Mem2RegPass : public FunctionPass {
public:
  static constexpr const char *passName = "mem2reg";
  bool run(Function &F);
  bool promote(StackInst *SI);
  void insertPHIsFor(StackInst *SI);
  bool promoteAll(StackInst *SI);

private:
  std::unordered_map<StackInst *, std::vector<Instruction *>> defs;
  std::unordered_map<StackInst *, std::set<BasicBlock *>> defBBs;
  std::unordered_map<StackInst *, std::set<BasicBlock *>> useBBs;
};
} /* namespace nnvm */
