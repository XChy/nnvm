#include "Utils/Debug.h"
#include <ADT/Graph.h>
#include <Analysis/PostDomTreeAnalysis.h>
#include <IR/Function.h>
#include <unordered_set>
using namespace nnvm;

bool PostDomTreeAnalysis::run(Function &F) { return true; }

bool PostDomTreeAnalysis::dom(BasicBlock *domer, BasicBlock *domee) {
  std::stack<BasicBlock *> worklist;
  std::unordered_set<BasicBlock *> visited;
  worklist.push(domee);

  while (!worklist.empty()) {
    BasicBlock *cur = worklist.top();
    worklist.pop();

    if (visited.count(cur))
      continue;
    visited.insert(cur);

    if (cur == domer)
      continue;

    if (cur->getTerminator()->isa<RetInst>())
      return false;

    for (int i = 0; i < cur->getSuccNum(); i++) {
      auto *succ = cur->getSucc(i);
      worklist.push(succ);
    }
  }

  return true;
}
