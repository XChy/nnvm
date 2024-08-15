#include "GVN.h"
#include "ADT/Graph.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Attributes.h"
#include <stack>

using namespace nnvm;

size_t GVNHoistPass::HashInstImpl::operator()(Instruction *I) const {
  size_t seed = 0;
  seed = combineHash(seed, I->getOpcode());
  for (uint i = 0; i < I->getOperandNum(); i++)
    seed = combineHash(seed, I->getOperand(i));
  return seed;
}

bool GVNHoistPass::EqInstImpl::operator()(Instruction *A,
                                          Instruction *B) const {
  if (A == B)
    return true;
  if (A->getOpcode() != B->getOpcode())
    return false;
  if (A->getType() != B->getType())
    return false;
  if (A->getOperandNum() != B->getOperandNum())
    return false;
  for (uint i = 0; i < A->getOperandNum(); i++) {
    if (A->getOperand(i) != B->getOperand(i))
      return false;
  }

  if (mayCast<ICmpInst>(A))
    return cast<ICmpInst>(A)->getPredicate() ==
           cast<ICmpInst>(B)->getPredicate();

  if (mayCast<FCmpInst>(A))
    return cast<FCmpInst>(A)->getPredicate() ==
           cast<FCmpInst>(B)->getPredicate();

  // TODO: handle commutative operators.
  return true;
}

static inline bool isPure(Instruction *I) {
  if (I->isa<TerminatorInst>())
    return false;

  if (I->isa<StackInst>())
    return false;

  if (auto *CI = mayCast<CallInst>(I))
    return cast<Function>(CI->getCallee())->isAttached(Attribute::Pure);

  if (I->mayWriteToMemory())
    return false;

  if (I->mayReadMemory())
    return false;

  return true;
}

void GVNHoistPass::assignNumbers(Function &F) {
  Graph<BasicBlock *> graph;
  GraphVisitor::reversePostorder(graph, F.getEntry(), [this](BasicBlock *BB) {
    for (Instruction *I : *BB) {

      if (!isPure(I) || I->isa<PhiNode>())
        continue;

      if (!numberOf.count(I)) {
        numberOf[I] = currentMaxNumber;
        currentMaxNumber++;
      }

      instsOf[numberOf[I]].push_back(I);
    }
  });
}

void GVNHoistPass::hoist() {
  for (uint64_t number = 0; number < currentMaxNumber; number++) {

    if (instsOf[number].size() == 1)
      continue;

    BasicBlock *domBlock = nullptr;
    Instruction *domInst = nullptr;

    for (auto *I : instsOf[number]) {
      if (!domBlock) {
        domBlock = I->getBlock();
        domInst = I;
      } else {
        // As the instruction visit order, we keep the first instruction
        if (domBlock == I->getBlock())
          continue;

        domBlock = domTree->getCommonDom(domBlock, I->getBlock());

        if (domBlock == I->getBlock())
          domInst = I;
        else if (domInst && domBlock != domInst->getBlock())
          domInst = nullptr;
      }
    }

    if (!domInst) {
      auto *first = instsOf[number].front();
      // All operands dominates domBlock
      if (!std::all_of(first->getUseeList().begin(), first->getUseeList().end(),
                       [&](Use *U) {
                         auto *usee = mayCast<Instruction>(U->getUsee());
                         if (!usee)
                           return true;
                         return domTree->dom(usee->getBlock(), domBlock);
                       }))
        continue;

      first->moveBeforeTerm(domBlock);
      domInst = first;
    }

    for (auto *I : instsOf[number]) {
      if (I != domInst) {
        I->replaceSelf(domInst);
        I->eraseFromBB();
      }
    }
  }
}

bool GVNHoistPass::run(Function &F) {
  currentMaxNumber = 0;
  domTree = getAnalysis<DomTreeAnalysis>(F);

  assignNumbers(F);
  hoist();

  return true;
}
