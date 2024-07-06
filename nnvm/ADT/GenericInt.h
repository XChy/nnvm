#pragma once

#include "Utils/Debug.h"
#include <cstdint>

// TODO: Do we need an arbitrary-precision integer class?
typedef uint64_t GInt;

namespace nnvm {

template <unsigned N> constexpr inline bool canExpressInBits(int64_t x) {
  if constexpr (N < 64)
    return -(INT64_C(1) << (N - 1)) <= x && x < (INT64_C(1) << (N - 1));
  return true;
}

static inline GInt alignWith(GInt value, GInt alignWidth) {
  return (value + alignWidth - 1) / alignWidth * alignWidth;
}

static inline GInt sextOf(GInt a, uint64_t bits) {
  if (a & (1 << (bits - 1)))
    return a | (GInt(-1) >> bits << bits);
  return a;
}

static inline GInt genericAdd(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  GInt retInt = sextOf((uint32_t)a + (uint32_t)b, bits);
  return retInt;
}

static inline GInt genericSub(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  GInt retInt = sextOf((uint32_t)a - (uint32_t)b, bits);
  return retInt;
}

static inline GInt genericMul(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  GInt retInt = sextOf((uint32_t)a * (uint32_t)b, bits);
  return retInt;
}

static inline GInt genericSDiv(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  // Refine a / 0 -> 0
  if (b == 0)
    return 0;
  GInt retInt = sextOf((int32_t)a / (int32_t)b, bits);
  return retInt;
}

static inline GInt genericSRem(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  // Refine a % 0 -> 0
  if (b == 0)
    return 0;
  GInt retInt = sextOf((int32_t)a % (int32_t)b, bits);
  return retInt;
}

static inline GInt genericEQ(GInt a, GInt b, uint64_t bits) {
  return sextOf(a == b, 1);
}

static inline GInt genericNE(GInt a, GInt b, uint64_t bits) {
  return sextOf(a != b, 1);
}

static inline GInt genericSLT(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  return sextOf((int32_t)a < (int32_t)b, 1);
}

static inline GInt genericSGT(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  return sextOf((int32_t)a > (int32_t)b, 1);
}

} // namespace nnvm
