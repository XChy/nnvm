// =======================================================================
// LoopAnalysis: to analyze the loops in the function. Generate a loop tree.
// =======================================================================

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <set>
#include <unordered_map>
#include <vector>

namespace nnvm {

struct Loop {
public:
  struct ExitEdge {
    BasicBlock *from;
    BasicBlock *to;
    bool operator==(ExitEdge other) {
      return from == other.from && to == other.to;
    }
  };

  bool contains(BasicBlock *BB) const { return blocks.count(BB); }

  Loop *getParent() const { return parent; }
  void setParent(Loop *parent) { this->parent = parent; }

  const std::vector<Loop *> &getChildren() const { return children; }
  void addChild(Loop *child) { children.push_back(child); }
  void removeChild(Loop *child) {
    children.erase(std::remove(children.begin(), children.end(), child),
                   children.end());
  }

  BasicBlock *getPreheader() const { return preheader; }
  void setPreheader(BasicBlock *preheader) { this->preheader = preheader; }

  BasicBlock *getHeader() const { return header; }
  void setHeader(BasicBlock *header) { this->header = header; }

  BasicBlock *getSingleLatch() const;
  std::set<BasicBlock *> getLatches() const;

  const std::vector<ExitEdge> &getExitEdges() const { return exitEdges; }
  std::set<BasicBlock *> getExits() const;

  void addExit(ExitEdge exit) { exitEdges.push_back(exit); }
  void removeExit(ExitEdge exit) {
    exitEdges.erase(std::remove(exitEdges.begin(), exitEdges.end(), exit),
                    exitEdges.end());
  }

  // Return whether BB is one of the exiting block, which may go out of loop.
  bool isExiting(BasicBlock *BB) const;

  const std::set<BasicBlock *> &getBlocks() const { return blocks; }
  void addBlock(BasicBlock *Block) { blocks.insert(Block); }
  void removeBlock(BasicBlock *Block) { blocks.erase(Block); }

private:
  Loop *parent;
  std::vector<Loop *> children;

  BasicBlock *preheader;
  BasicBlock *header;
  std::vector<ExitEdge> exitEdges;
  std::set<BasicBlock *> blocks;
};

class LoopAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  std::vector<Loop *> getLoops() const { return loops; }

  DomTreeAnalysis *getDomTree() { return domTree; }

  void print(std::ostream &out);
  ~LoopAnalysis();

private:
  Loop *tryToFindLoop(BasicBlock *header);
  void analyzeLoop(Loop *loop);
  DomTreeAnalysis *domTree;
  std::vector<Loop *> loops;
  std::unordered_map<BasicBlock *, Loop *> headerToLoop;
};

} /* namespace nnvm */
