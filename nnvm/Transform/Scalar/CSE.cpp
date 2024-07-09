#include "CSE.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Attributes.h"
#include <stack>

using namespace nnvm;

size_t CSEPass::HashInstImpl::operator()(Instruction *I) const {
  size_t seed = 0;
  seed = combineHash(seed, I->getOpcode());
  for (uint i = 0; i < I->getOperandNum(); i++)
    seed = combineHash(seed, I->getOperand(i));
  return seed;
}

bool CSEPass::EqInstImpl::operator()(Instruction *A, Instruction *B) const {
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

  if (dyn_cast<ICmpInst>(A))
    return cast<ICmpInst>(A)->getPredicate() ==
           cast<ICmpInst>(B)->getPredicate();

  if (dyn_cast<FCmpInst>(A))
    return cast<FCmpInst>(A)->getPredicate() ==
           cast<FCmpInst>(B)->getPredicate();

  // TODO: handle commutative operators.
  return true;
}

Instruction *CSEPass::CSENode::findAvailable(Instruction *current) {
  if (availables.count(current))
    return availables[current];
  if (parent)
    return parent->findAvailable(current);
  return nullptr;
}

Instruction *CSEPass::CSENode::findAvailableLoad(LoadInst *current) {
  if (availableLoads.count(current))
    return availableLoads[current];
  if (killedLoad)
    return nullptr;
  if (!parent)
    return nullptr;
  if (parent->block->getSuccNum() != 1 || block->getPredNum() != 1)
    return nullptr;
  return parent->findAvailableLoad(current);
}

void CSEPass::CSENode::addAvailable(Instruction *current) {
  availables.insert({current, current});
}

void CSEPass::CSENode::addAvailableLoad(LoadInst *current) {
  availableLoads.insert({current, current});
}

bool CSEPass::run(Function &F) {
  domTree = getAnalysis<DomTreeAnalysis>(F);

  bool changed = false;
  std::stack<CSENode *> nodes;
  nodes.push(new CSENode(F.getEntry()));

  while (!nodes.empty()) {
    CSENode *node = nodes.top();
    if (!node->processed) {
      changed |= processNode(node);
      node->processed = true;
    } else if (node->currentChildIndex != domTree->getChildNum(node->block)) {
      BasicBlock *childBlock =
          domTree->getChild(node->block, node->currentChildIndex);
      CSENode *childNode = new CSENode(childBlock, node);
      node->currentChildIndex++;
      nodes.push(childNode);
    } else {
      nodes.pop();
      delete node;
    }
  }

  return changed;
}

static inline bool isPure(Instruction *I) {
  if (I->isa<TerminatorInst>())
    return false;

  if (I->isa<StackInst>())
    return false;

  if (auto *CI = dyn_cast<CallInst>(I))
    return cast<Function>(CI->getCallee())->isAttached(Attribute::Pure);

  if (I->mayWriteToMemory())
    return false;

  if (I->mayReadMemory())
    return false;

  return true;
}

bool CSEPass::processNode(CSENode *node) {
  bool changed = false;
  for (Instruction *I : incChange(*node->block)) {

    if (auto *LI = dyn_cast<LoadInst>(I)) {
      if (Instruction *available = node->findAvailableLoad(LI)) {
        LI->replaceSelf(available);
        LI->eraseFromBB();
        changed = true;
      } else {
        node->addAvailableLoad(LI);
      }
      continue;
    }

    if (!isPure(I)) {
      if (I->mayWriteToMemory()) {
        node->killedLoad = true;
        node->clearLoads();
      }
      continue;
    }

    if (Instruction *available = node->findAvailable(I)) {
      I->replaceSelf(available);
      I->eraseFromBB();
      changed = true;
      continue;
    }

    node->addAvailable(I);
  }
  return changed;
}
