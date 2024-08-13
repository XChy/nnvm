#include "IRVerifier.h"
#include "Analysis/DomTreeAnalysis.h"
using namespace nnvm;

void IRVerifier::run(Module &M) {
  domTree = std::make_unique<DomTreeAnalysis>();
  for (auto [name, F] : M.getFunctionMap())
    verify(*F);
}
void IRVerifier::verify(Function &F) {
  for (BasicBlock *BB : F)
    verify(BB);
}

void IRVerifier::verify(BasicBlock *BB) {
  for (auto *I : *BB)
    verify(I);
}

void IRVerifier::verify(Instruction *I) {
  BasicBlock *userBlock = I->getBlock();
  for (Use *use : I->getUseeList()) {
    Instruction *usee = mayCast<Instruction>(use->getUsee());
    if (!usee)
      continue;

    BasicBlock *useeBlock = usee->getBlock();

    if (PhiNode *phi = mayCast<PhiNode>(I)) {
      auto incomings = phi->getAllIncomingBBs();
      for (BasicBlock *pred : userBlock->getPredRange()) {
        assert("Phi must have predecessor as its incoming block!" &&
               std::find(incomings.begin(), incomings.end(), pred) !=
                   incomings.end());
      }
      continue;
    }

    // assert(domTree->dom(useeBlock, userBlock));
  }
}
