#include "GVN.h"
#include "ADT/Graph.h"
#include "ADT/Hash.h"
#include "ADT/Ranges.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Attributes.h"
#include <stack>

using namespace nnvm;

size_t GVNPass::HashInstImpl::operator()(Instruction *I) const {
  size_t seed = 0;
  seed = combineHash(seed, I->getOpcode());
  for (uint i = 0; i < I->getOperandNum(); i++)
    seed = combineHash(seed, I->getOperand(i));
  return seed;
}

bool GVNPass::EqInstImpl::operator()(Instruction *A, Instruction *B) const {
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

bool GVNPass::run(Function &F) {
  domTree = getAnalysis<DomTreeAnalysis>(F);
  Graph<BasicBlock *>().reversePostOrder(F.getEntry(), [this](BasicBlock *BB) {
    // TODO
  });
  return true;
}
