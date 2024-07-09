#include "LoopAnalysis.h"
#include "Analysis/DomTreeAnalysis.h"
#include <stack>

using namespace nnvm;

bool LoopAnalysis::run(Function &F) {
  DomTreeAnalysis *domTree = getAnalysis<DomTreeAnalysis>(F);
  // post order
  std::stack<BasicBlock *> worklist;
  std::unordered_set<BasicBlock *> visited;

  worklist.push(F.getEntry());

  while (!worklist.empty()) {
    BasicBlock *cur = worklist.top();
    if (visited.count(cur)) {
      worklist.pop();
    } else {
      visited.insert(cur);
      for (int i = 0; i < domTree->getChildNum(cur); i++) {
        BasicBlock *child = domTree->getChild(cur, i);
        worklist.push(child);
      }
    }
  }

  return true;
}
