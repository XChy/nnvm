#include "MemAccAnalysis.h"

using namespace nnvm;

bool MemAccAnalysis::run(Function &F) { return true; }

AccessInfo MemAccAnalysis::getDomMemDef(Instruction *I) {}
AccessInfo MemAccAnalysis::getDomMemUse(Instruction *I) {}
