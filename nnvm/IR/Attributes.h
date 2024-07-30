#pragma once

#include <set>
#include <string>

namespace nnvm {
enum class Attribute {
  Pure, // No sideeffect!!
  Immutable,
  Internal,
};

using AttributeSet = std::set<Attribute>;

static inline std::string getDecoratorStr(const AttributeSet &attrs) {
  std::string ret;
  for (Attribute attr : attrs) {
    switch (attr) {
    case Attribute::Pure:
      ret += "pure";
      break;
    case Attribute::Internal:
      ret += "internal";
      break;
    case Attribute::Immutable:
      ret += "immutable";
      break;
    default:
      ret += "illegal";
    }
    ret += " ";
  }
  return ret;
}

} // namespace nnvm
