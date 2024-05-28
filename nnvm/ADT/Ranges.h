#pragma once

namespace nnvm {

template <typename Range> class MayChangeIter {
  using ActualIter = decltype(Range::begin());
};

template <typename Range> class MayChangeRange {
public:
  MayChangeIter<Range> begin() {}
  MayChangeIter<Range> end() {}
};

template <typename Range> MayChangeRange<Range> mayChange(Range range) {
  return MayChangeRange<Range>(range);
}
} /* namespace nnvm */
