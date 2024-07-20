#pragma once
#include "Debug.h"
#include <type_traits>

namespace nnvm {
class Value;
class Instruction;
template <typename From, typename To> To *cast(From *from) {
  nnvm_unreachable("Cannot cast unknown types!");
}

template <typename From, typename To> To *mayCast(From *from) {
  return dynamic_cast<To *>(from);
}

template <typename To> To *mayCast(Value *from) {
  return dynamic_cast<To *>(from);
}

template <typename To> const To *mayCast(const Value *from) {
  return dynamic_cast<const To *>(from);
}

template <typename To> To *cast(Value *from) {
  auto *casted = dynamic_cast<To *>(from);
  nnvm_assert(casted && "Invalid cast");
  return casted;
}

template <typename To> To *cast(Instruction *from) {
  auto *casted = dynamic_cast<To *>(from);
  nnvm_assert(casted && "Invalid cast");
  return casted;
}

} /* namespace nnvm */
