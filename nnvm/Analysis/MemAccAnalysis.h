// =======================================================================
// AliasAnalysis: to analyze whether two pointer points to the same underlying
// object.
// =======================================================================

#pragma once

#include "Analysis/AAInfo.h"
#include "Analysis/AliasAnalysis.h"
#include "Analysis/DomTreeAnalysis.h"
#include "IR/Instruction.h"
#include "Transform/Infra/Pass.h"
#include <unordered_map>
#include <vector>

namespace nnvm {

enum AccessFlag {
  MemNoop,
  MemUse,
  MemDef,
  MemClobber,
};

struct AccessInfo {
  Instruction *accessInst;
  AccessFlag flag;
};

class MemAccAnalysis : public FunctionPass {
public:
  bool run(Function &F);

  AccessInfo getDomMemDef(Instruction *I);
  AccessInfo getDomMemUse(Instruction *I);

  // Check whether there exists clobber between domer and domee (excludes domer
  // ).
  bool hasClobber(Instruction *I, BasicBlock *domer, BasicBlock *domee);

private:
  AccessInfo getMemDefInBlock(Instruction *I, BasicBlock *block);
  AccessInfo getLocalDomMemDef(Instruction *I);

  AccessInfo getMemDefForBlockIter(Instruction *I, BasicBlock::Iterator begin,
                                   BasicBlock::Iterator end);

  AliasAnalysis *AA;
  DomTreeAnalysis *domTree;
};

} /* namespace nnvm */
