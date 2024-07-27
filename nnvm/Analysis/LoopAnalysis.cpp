#include "LoopAnalysis.h"
#include "ADT/Ranges.h"
#include <queue>
#include <stack>

using namespace nnvm;

BasicBlock *Loop::getSingleLatch() const {
  BasicBlock *ret = nullptr;
  for (auto *pred : header->getPredRange()) {
    if (contains(pred)) {
      if (ret)
        return nullptr;
      ret = pred;
    }
  }
  return ret;
}

std::set<BasicBlock *> Loop::getLatches() const {
  std::set<BasicBlock *> ret;
  for (auto *pred : header->getPredRange())
    if (contains(pred))
      ret.insert(pred);
  return ret;
}

std::set<BasicBlock *> Loop::getExits() const {
  std::set<BasicBlock *> ret;
  for (auto [from, to] : exitEdges) {
    ret.insert(to);
  }
  return ret;
}

bool Loop::isExiting(BasicBlock *BB) const {
  return std::any_of(exitEdges.begin(), exitEdges.end(),
                     [BB](ExitEdge edge) { return edge.from == BB; });
}

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
      if (Loop *loop = tryToFindLoop(cur)) {
        loops.push_back(loop);
        headerToLoop[loop->getHeader()] = loop;
        analyzeLoop(loop);
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
  for (BasicBlock *pred : header->getPredRange())
    if (domTree->dom(header, pred))
      backNodes.push_back(pred);

  if (backNodes.empty())
    return nullptr;

  Loop *loop = new Loop;
  loop->setHeader(header);
  loop->addBlock(header);

  // Visit blocks in post order of dominator tree, ensuring we have analyzed the
  // sub loop before analyzing the parent loop.
  std::deque<BasicBlock *> worklist(backNodes.begin(), backNodes.end());
  while (!worklist.empty()) {
    BasicBlock *current = worklist.front();
    worklist.pop_front();
    if (loop->contains(current))
      continue;

    loop->addBlock(current);
    if (headerToLoop.count(current) &&
        headerToLoop[current]->getParent() == nullptr) {
      loop->addChild(headerToLoop[current]);
      headerToLoop[current]->setParent(loop);
    }

    for (BasicBlock *pred : current->getPredRange())
      worklist.push_back(pred);
  }
  return loop;
}

void LoopAnalysis::analyzeLoop(Loop *loop) {
  // Look for preheader
  BasicBlock *preheader = nullptr;
  auto preds = makeRange(loop->getHeader()->getPredBegin(),
                         loop->getHeader()->getPredEnd());
  for (auto *pred : preds) {
    if (loop->contains(pred))
      continue;

    if (!preheader) {
      preheader = pred;
      continue;
    }

    if (preheader) {
      preheader = nullptr;
      break;
    }
  }

  if (preheader && preheader->getSuccNum() != 1)
    preheader = nullptr;

  loop->setPreheader(preheader);

  // Look for exits
  for (auto *bb : loop->getBlocks()) {
    for (int i = 0; i < bb->getSuccNum(); i++) {
      if (!loop->contains(bb->getSucc(i)))
        loop->addExit({bb, bb->getSucc(i)});
    }
  }
}

void LoopAnalysis::print(std::ostream &out) {
  for (Loop *loop : loops) {
    std::cout << loop->getHeader()->dump();
  }
}

LoopAnalysis::~LoopAnalysis() {
  for (auto *loop : loops)
    delete loop;
}
