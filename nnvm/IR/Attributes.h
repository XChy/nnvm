#pragma once

#include <set>

namespace nnvm {
enum class Attribute {
  Pure, // No sideeffect!!
};

using AttributeSet = std::set<Attribute>;

} // namespace nnvm
