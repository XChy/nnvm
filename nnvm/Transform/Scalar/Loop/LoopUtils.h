#include "Analysis/LoopAnalysis.h"
#include "Analysis/SCEV.h"
#include <optional>
namespace nnvm {
// @return whether the loop is changed
bool canonicalizeLoop(Loop *loop);

struct LoopBoundInfo {
  std::optional<uint64_t> tripCount;
  ScevValue *indvar;
};

std::optional<LoopBoundInfo> analyzeLoopBound(Loop *loop, SCEV *scev);

} /* namespace nnvm */
