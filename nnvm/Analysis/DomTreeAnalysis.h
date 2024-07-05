// =======================================================================
// DomTreeAnalysis: apply semi-NCA algorithm to calculate the dominance
// relation.
// =======================================================================

#pragma once

#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {
class DomTreeAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  // TODO: make it faster with ancestor algorithm.
  bool dom(BasicBlock *domer, BasicBlock *domee) {
    return domer == domee || rdom(domer, domee);
  }

  // Restricted dominance.
  bool rdom(BasicBlock *domer, BasicBlock *domee) {
    BasicBlock *cur = domee;
    while (cur) {
      if (idom(domer, cur))
        return true;
      cur = domTree[cur];
    }
    return false;
  }

  // Immediate dominance.
  bool idom(BasicBlock *domer, BasicBlock *domee) {
    return domTree[domee] == domer;
  }

  BasicBlock *getIDom(BasicBlock *node) { return domTree[node]; }

  // Reachable from the entry block?
  bool isReachable(BasicBlock *BB) { return domTree.count(BB); }

  // Print out the information of the dominator tree.
  void print(std::ostream &out);

private:
  std::unordered_map<BasicBlock *, BasicBlock *> domTree;
  std::vector<BasicBlock *> preorderBBs;
  std::vector<int32_t> parent;
  std::unordered_map<BasicBlock *, uint32_t> dfn;
};
} /* namespace nnvm */
