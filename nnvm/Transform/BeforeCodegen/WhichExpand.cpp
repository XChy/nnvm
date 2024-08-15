#include "WhichExpand.h"
#include "ADT/GenericInt.h"
#include "Analysis/LoopAnalysis.h"
#include "IR/Constant.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Platform/Platform.h"
#include "Transform/Infra/BlockUtils.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <cmath>

using namespace nnvm;

bool WhichExpandPass::run(Function &F) {
  bool changed = false;
  for (BasicBlock *block : incChange(F)) {
    changed |= processBlock(block);
  }

  return changed;
}

bool WhichExpandPass::processBlock(BasicBlock *block) {
  bool changed = false;
  std::vector<WhichOfInst *> toprocess;
  for (auto *I : *block) {
    if (I->isa<WhichOfInst>())
      toprocess.push_back(cast<WhichOfInst>(I));
  }

  IRBuilder builder;
  auto *F = block->getParent();
  for (WhichOfInst *which : toprocess) {
    auto *whichBB = which->getBlock();
    BasicBlock *afterWhichBB;

    // Split block
    splitBlockAt(whichBB, which, afterWhichBB);
    auto *trueBB = new BasicBlock(F, which->getName() + ".true");
    BasicBlock *falseBB = afterWhichBB;
    BasicBlock *trueIn, *falseIn;

    builder.insertAt(whichBB->end());
    builder.buildBr(which->getCond(), trueBB, falseBB);

    if (trueBB != afterWhichBB) {
      builder.insertAt(trueBB->end());
      builder.buildBr(afterWhichBB);
    }
    trueIn = trueBB != afterWhichBB ? trueBB : whichBB;

    if (falseBB != afterWhichBB) {
      builder.insertAt(falseBB->end());
      builder.buildBr(afterWhichBB);
    }
    falseIn = falseBB != afterWhichBB ? falseBB : whichBB;

    builder.insertAt(afterWhichBB->begin());
    auto *phi = builder.buildPhi(which->getType());
    phi->addIncoming(trueIn, which->getTrueVal());
    phi->addIncoming(falseIn, which->getFalseVal());

    which->replaceSelf(phi);
    which->eraseFromBB();

    changed = true;
  }

  return changed;
}
