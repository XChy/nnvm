#pragma once

#include <iterator>

namespace nnvm {

template <typename Range> class IncChangeIter {
  using ActualIter = typename Range::Iterator;

public:
  IncChangeIter(ActualIter cur, ActualIter end) : cur(cur), end(end) {
    if (cur != end) {
      next = cur;
      next++;
    }
  }

  IncChangeIter operator++() {
    cur = next;
    if (cur != end) {
      next = cur;
      next++;
    }
    return *this;
  }

  IncChangeIter operator++(int) {
    ActualIter ret(*this);
    cur = next;
    if (cur != end) {
      next = cur;
      next++;
    }
    return ret;
  }

  bool operator==(const IncChangeIter &other) { return cur == other.cur; }
  bool operator!=(const IncChangeIter &other) { return cur != other.cur; }

  typename ActualIter::value_type operator*() { return *cur; }

private:
  ActualIter cur;
  ActualIter next;
  ActualIter end;
};

template <typename Range> class IncChangeRange {
public:
  IncChangeRange(Range &range)
      : beginIter(range.begin(), range.end()),
        endIter(range.end(), range.end()) {}

  IncChangeIter<Range> begin() { return beginIter; }
  IncChangeIter<Range> end() { return endIter; }

private:
  IncChangeIter<Range> beginIter;
  IncChangeIter<Range> endIter;
};

/**
 * Provite a better range to keep the iteration going on even if the inner
 * object of current iterator has been free/broken.
 * @param range the range we want to refine
 */
template <typename Range> IncChangeRange<Range> incChange(Range &range) {
  return IncChangeRange<Range>(range);
}

template <typename Iter> struct RangeWrapper {
public:
  Iter begin() { return beginIter; }
  Iter end() { return endIter; }

private:
  Iter beginIter;
  Iter endIter;
};

template <typename Iter> RangeWrapper<Iter> makeRange(Iter begin, Iter end) {
  return RangeWrapper<Iter>(begin, end);
}

} /* namespace nnvm */
