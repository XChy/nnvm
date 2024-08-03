#include "Utils/Debug.h"
#include <ADT/Graph.h>
#include <Analysis/DomTreeAnalysis.h>
#include <IR/Function.h>
#include <algorithm>
using namespace nnvm;

bool DomTreeAnalysis::run(Function &F) {
  Graph<BasicBlock *> graph;
  std::vector<int32_t> sdom;
  std::vector<int32_t> idom;

  GraphVisitor::dfsWithParent(graph, F.getEntry(),
                              [&](BasicBlock *bb, BasicBlock *parent) {
                                dfn[bb] = preorderBBs.size();
                                parentDFN.push_back(parent ? dfn[parent] : -1);
                                preorderBBs.push_back(bb);
                              });
  sdom.resize(preorderBBs.size());

  // Reversed preorder traversal, compute the sdom of each node.
  for (int currentDFN = preorderBBs.size() - 1; currentDFN >= 0; currentDFN--) {
    BasicBlock *BB = preorderBBs[currentDFN];
    sdom[currentDFN] = currentDFN;
    for (auto it = BB->getPredBegin(); it != BB->getPredEnd(); it++) {
      BasicBlock *pred = *it;
      int32_t predDFN = dfn[pred];

      if (predDFN < currentDFN) {
        sdom[currentDFN] = std::min(sdom[currentDFN], predDFN);
      } else {
        int32_t currentAncestor = predDFN;

        while (currentAncestor != -1 && currentAncestor >= currentDFN) {
          sdom[currentDFN] = std::min(sdom[currentAncestor], sdom[currentDFN]);
          currentAncestor = parentDFN[currentAncestor];
        }
      }
    }
  }

  std::vector<int32_t> parentD;
  parentD.resize(preorderBBs.size());
  parentD[0] = -1;
  for (int32_t currentDFN = 1; currentDFN < preorderBBs.size(); currentDFN++) {
    int32_t v = parentDFN[currentDFN];
    while (v != -1) {
      if (v <= sdom[currentDFN])
        break;
      v = parentD[v];
    }

    parentD[currentDFN] = v;
  }

  // Estabilish domtree
  for (int i = 1; i < parentD.size(); i++) {
    BasicBlock *domee = preorderBBs[i];
    BasicBlock *domer = preorderBBs[parentD[i]];
    domParent[domee] = domer;
    domChildren[domer].push_back(domee);
  }

  return true;
}

BasicBlock *DomTreeAnalysis::getCommonDom(BasicBlock *left, BasicBlock *right) {
  nnvm_unimpl();
}

void DomTreeAnalysis::print(std::ostream &out) {
  out << "[DomTreeAnalysis]\n";
  for (auto [domee, domer] : domParent) {
    out << domee->getName() << " dominated by " << domer->getName() << "\n";
  }
}
