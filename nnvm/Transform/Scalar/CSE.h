/**
 * CSE: Common Sub-expression Elimination. The pass eliminating common
 * expressions.
 */

#pragma once

#include "Analysis/DomTreeAnalysis.h"
#include "IR/BasicBlock.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"

namespace nnvm {
class CSEPass : public FunctionPass {
public:
  static constexpr const char *passName = "cse";
  bool run(Function &F);

private:
  struct HashInstImpl {
    size_t operator()(Instruction *I) const;
  };
  struct EqInstImpl {
    bool operator()(Instruction *A, Instruction *B) const;
  };

  struct CSENode {
    CSENode(){};
    CSENode(BasicBlock *BB) : block(BB){};
    CSENode(BasicBlock *BB, CSENode *parent) : block(BB), parent(parent){};

    Instruction *findAvailable(Instruction *current);
    Instruction *findAvailableLoad(LoadInst *current);

    void addAvailable(Instruction *current);
    void addAvailableLoad(LoadInst *current);
    void clearLoads() { availableLoads.clear(); }

    bool processed = false;

    BasicBlock *block;
    CSENode *parent = nullptr;
    int currentChildIndex = 0;
    std::unordered_map<Instruction *, Instruction *, HashInstImpl, EqInstImpl>
        availables;

    bool killedLoad = false;
    std::unordered_map<Instruction *, Instruction *, HashInstImpl, EqInstImpl>
        availableLoads;
  };

  bool processNode(CSENode *BB);
  DomTreeAnalysis *domTree;
};
} /* namespace nnvm */
