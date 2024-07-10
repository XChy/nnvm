#pragma once

#include <IR/BasicBlock.h>
#include <Utils/Debug.h>
#include <cstdint>
#include <stack>
#include <unordered_map>
#include <unordered_set>

namespace nnvm {

template <typename NodeTy> class Graph {
public:
  Graph() {}

  template <typename Visit> bool dfs(NodeTy *entry, Visit visitor) {
    visitor(entry);
    auto iter = edges.find(entry);
    for (; iter != edges.end(); iter++) {
      dfs(iter.second);
    }
  }

  void addEdge(NodeTy from, NodeTy to) { edges.insert({from, to}); }
  bool hasEdge(NodeTy from, NodeTy to) {
    auto iter = edges.find(from);
    for (; iter != edges.end(); iter++)
      if (iter.second == to)
        return true;
    return false;
  }

protected:
  std::unordered_multimap<NodeTy, NodeTy> edges;
};

class BasicBlock;

template <> class Graph<BasicBlock *> {
public:
  struct DFSNode {
    BasicBlock *node;
    BasicBlock *parent;
  };

  template <typename Visit>
  void dfsWithParent(BasicBlock *entry, const Visit &visitor) {
    std::unordered_set<BasicBlock *> visited;
    std::stack<DFSNode> toVisit;
    toVisit.push({entry, nullptr});

    while (!toVisit.empty()) {
      auto [current, parent] = toVisit.top();
      toVisit.pop();

      if (visited.count(current))
        continue;

      visitor(current, parent);
      visited.insert(current);

      for (int i = 0; i < current->getSuccNum(); i++)
        toVisit.push({current->getSucc(i), current});
    }
  }

  template <typename Visit> void dfs(BasicBlock *entry, Visit visitor) {
    std::unordered_set<BasicBlock *> visited;
    std::stack<BasicBlock *> toVisit;
    toVisit.push(entry);

    while (!toVisit.empty()) {
      BasicBlock *current = toVisit.top();
      toVisit.pop();

      if (visited.count(current))
        continue;

      visitor(current);
      visited.insert(current);

      for (int i = 0; i < current->getSuccNum(); i++)
        toVisit.push(current->getSucc(i));
    }
  }

  template <typename Visit> void postOrder(BasicBlock *entry, Visit visitor) {
    std::stack<BasicBlock *> worklist;
    std::unordered_set<BasicBlock *> visited;
    worklist.push(entry);

    while (!worklist.empty()) {
      BasicBlock *cur = worklist.top();
      // Visit block in the post order of dominance tree.
      if (visited.count(cur)) {
        visitor(cur);
        worklist.pop();
      } else {
        visited.insert(cur);
        for (int i = 0; i < cur->getSuccNum(); i++) {
          BasicBlock *child = cur->getSucc(i);
          worklist.push(child);
        }
      }
    }
  }

  template <typename Visit>
  void reversePostOrder(BasicBlock *entry, Visit visitor) {
    std::vector<BasicBlock *> RPO;
    postOrder(entry, [&RPO](BasicBlock *BB) { RPO.push_back(BB); });
    for (auto it = RPO.rbegin(); it != RPO.rend(); it++)
      visitor(*it);
  }

  void addEdge(BasicBlock *from, BasicBlock *to) {}
  bool hasEdge(BasicBlock *from, BasicBlock *to) {
    for (int i = 0; i < from->getSuccNum(); i++)
      if (from->getSucc(i) == to)
        return true;
    return false;
  }

protected:
};

} /* namespace nnvm */
