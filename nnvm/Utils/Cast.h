#pragma once
#include "Debug.h"
#include <type_traits>

namespace nnvm {
class Value;
class Instruction;
template <typename From, typename To> To *cast(From *from) {
  nnvm_unreachable("Cannot cast unknown types!");
}

template <typename From, typename To> To *dyn_cast(From *from) {
  return dynamic_cast<To *>(from);
}

template <typename To> To *dyn_cast(Value *from) {
  return dynamic_cast<To *>(from);
}

template <typename To> To *cast(Value *from) {
  auto *casted = dynamic_cast<To *>(from);
  assert(casted && "Cannot cast in" && __PRETTY_FUNCTION__);
  return casted;
}

template <typename To> To *cast(Instruction *from) {
  auto *casted = dynamic_cast<To *>(from);
  assert(casted && "Cannot cast in" && __PRETTY_FUNCTION__);
  return casted;
}

} /* namespace nnvm */
