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

  uint64_t getSuccNum(NodeTy node) {}
  NodeTy getSucc(NodeTy node, uint64_t index) {}
};

template <> class Graph<BasicBlock *> {
public:
  uint64_t getSuccNum(BasicBlock *node) const { return node->getSuccNum(); }
  BasicBlock *getSucc(BasicBlock *node, uint64_t index) const {
    return node->getSucc(index);
  }
};

class GraphVisitor {
public:
  template <typename NodeTy, typename Visit>
  static inline void dfsWithParent(Graph<NodeTy> graph, NodeTy entry,
                                   const Visit &visitor) {
    std::unordered_set<NodeTy> visited;
    std::stack<std::tuple<NodeTy, NodeTy>> toVisit;
    toVisit.push({entry, nullptr});

    while (!toVisit.empty()) {
      auto [current, parent] = toVisit.top();
      toVisit.pop();

      if (visited.count(current))
        continue;

      visitor(current, parent);
      visited.insert(current);

      for (int i = 0; i < graph.getSuccNum(current); i++)
        toVisit.push({graph.getSucc(current, i), current});
    }
  }

  template <typename NodeTy, typename Visit>
  static inline void dfs(Graph<NodeTy> graph, NodeTy entry, Visit visitor) {
    std::unordered_set<NodeTy> visited;
    std::stack<NodeTy> toVisit;
    toVisit.push(entry);

    while (!toVisit.empty()) {
      NodeTy current = toVisit.top();
      toVisit.pop();
      if (visited.count(current))
        continue;
      visited.insert(current);

      visitor(current);

      for (int i = 0; i < graph.getSuccNum(current); i++)
        toVisit.push(graph.getSucc(current, i));
    }
  }

  template <typename NodeTy, typename Visit>
  static inline void postorder(Graph<NodeTy> graph, NodeTy entry,
                               Visit visitor) {
    // Use flag to imply whether the children of the node is visited.
    std::stack<std::pair<NodeTy, bool>> stack;
    std::unordered_set<NodeTy> visited;
    stack.push(std::pair<NodeTy, bool>(entry, false));
    while (!stack.empty()) {
      std::pair<NodeTy, bool> item = stack.top();
      stack.pop();
      NodeTy cur = item.first;
      if (item.second) {
        visitor(cur);
      } else if (!visited.count(cur)) {
        visited.insert(cur);
        stack.push(std::pair<NodeTy, bool>(cur, true));
        for (int i = 0; i < graph.getSuccNum(cur); i++)
          stack.push(std::pair<NodeTy, bool>(graph.getSucc(cur, i), false));
      }
    }
  }

  template <typename NodeTy, typename Visit>
  static inline void reversePostorder(Graph<NodeTy> graph, NodeTy entry,
                                      Visit visitor) {
    std::stack<NodeTy> order;
    postorder(graph, entry, [&order](NodeTy node) { order.push(node); });
    while (!order.empty()) {
      visitor(order.top());
      order.pop();
    }
  }
};

} /* namespace nnvm */
