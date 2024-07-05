#pragma once

#include <cstdint>

// TODO: Do we need an arbitrary-precision integer class?
typedef uint64_t GInt;

template <unsigned N> constexpr inline bool canExpressInBits(int64_t x) {
  if constexpr (N < 64)
    return -(INT64_C(1) << (N - 1)) <= x && x < (INT64_C(1) << (N - 1));
  return true;
}

static inline GInt alignWith(GInt value, GInt alignWidth) {
  return (value + alignWidth - 1) / alignWidth * alignWidth;
}
