#pragma once

namespace nnvm {

template <typename M, typename P> bool match(M matched, P pattern) {
  return pattern.match(matched);
}

} // namespace nnvm
