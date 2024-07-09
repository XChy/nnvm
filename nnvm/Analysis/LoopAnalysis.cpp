#include "LoopAnalysis.h"
#include "ADT/Ranges.h"
#include <queue>
#include <stack>

using namespace nnvm;

bool LoopAnalysis::run(Function &F) {
  domTree = getAnalysis<DomTreeAnalysis>(F);
  // post order
  std::stack<BasicBlock *> worklist;
  std::unordered_set<BasicBlock *> visited;

  worklist.push(F.getEntry());

  while (!worklist.empty()) {
    BasicBlock *cur = worklist.top();
    // Visit block in the post order of dominance tree.
    if (visited.count(cur)) {
      if (Loop *found = tryToFindLoop(cur)) {
        loops.push_back(found);
        headerToLoop[found->header] = found;
      }
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

Loop *LoopAnalysis::tryToFindLoop(BasicBlock *header) {
  std::vector<BasicBlock *> backNodes;
  auto preds = makeRange(header->getPredBegin(), header->getPredEnd());
  for (BasicBlock *pred : preds)
    if (domTree->dom(header, pred))
      backNodes.push_back(pred);

  if (backNodes.empty())
    return nullptr;

  Loop *loop = new Loop;
  loop->header = header;
  loop->blocks.insert(header);

  std::deque<BasicBlock *> worklist(backNodes.begin(), backNodes.end());
  while (!worklist.empty()) {
    BasicBlock *current = worklist.front();
    worklist.pop_front();
    if (loop->blocks.count(current))
      continue;
    loop->blocks.insert(current);
    if (headerToLoop.count(current) &&
        headerToLoop[current]->parent == nullptr) {
      loop->children.push_back(headerToLoop[current]);
      headerToLoop[current]->parent = loop;
    }

    for (BasicBlock *pred :
         makeRange(current->getPredBegin(), current->getPredEnd()))
      worklist.push_back(pred);
  }
  return loop;
}

void LoopAnalysis::print(std::ostream &out) {
  for (Loop *loop : loops) {
    std::cout << loop->header->dump();
  }
}

LoopAnalysis::~LoopAnalysis() {
  for (auto *loop : loops)
    delete loop;
}
