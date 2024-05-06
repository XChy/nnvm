#pragma once
#include "Debug.h"

namespace nnvm {
template <typename From, typename To> To *cast(From *from) {
  nnvm_unreachable("Cannot cast unknown types!");
}

} /* namespace nnvm */
