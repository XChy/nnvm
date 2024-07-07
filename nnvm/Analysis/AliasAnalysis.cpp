#include "AliasAnalysis.h"

using namespace nnvm;

AAFlag AliasAnalysis::alias(Value *a, Value *b) { return MayAlias; }
