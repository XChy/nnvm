// =======================================================================
// SCEV: Scalar Evolution, used to analyze the inductive relation in loops based
// on Bachmann, Wang, and Zima’s “Chains of Recurrences” (“chrecs”)
// =======================================================================

#pragma once

#include "Analysis/AAInfo.h"
#include "IR/Instruction.h"
#include "IR/Value.h"

namespace nnvm {

class SCEVValue {
public:
private:
  Value *startValue;
  SCEVValue *step;
  InstID operation;
};

class SCEV {
public:
private:
};

} /* namespace nnvm */
