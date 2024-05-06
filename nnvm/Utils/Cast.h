#pragma once
#include "Debug.h"
#include <type_traits>

namespace nnvm {
class Value;
template <typename From, typename To> To *cast(From *from) {
  nnvm_unreachable("Cannot cast unknown types!");
}

template <typename To> To *cast(Value *from) {
  auto *casted = dynamic_cast<To*>(from);
  assert(casted && "Cannot cast in" && __PRETTY_FUNCTION__);
}

} /* namespace nnvm */
