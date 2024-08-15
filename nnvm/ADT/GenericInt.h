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
    return (a << (64 - bits) >> (64 - bits)) | (GInt(-1) >> bits << bits);
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

  // Refine INT_MIN / -1 -> INT_MIN
  if ((int32_t)a == INT32_MIN && b == -1)
    return a;

  GInt retInt = sextOf(((int32_t)a) / ((int32_t)b), bits);
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

static inline GInt genericAnd(GInt a, GInt b, uint64_t bits) {
  GInt retInt = sextOf(a & b, bits);
  return retInt;
}

static inline GInt genericOr(GInt a, GInt b, uint64_t bits) {
  GInt retInt = sextOf(a | b, bits);
  return retInt;
}

static inline GInt genericXor(GInt a, GInt b, uint64_t bits) {
  GInt retInt = sextOf(a ^ b, bits);
  return retInt;
}

static inline GInt genericShl(GInt a, GInt b, uint64_t bits) {
  // Refine
  if (b >= bits)
    return 0;

  GInt retInt = sextOf(a << b, bits);
  return retInt;
}

static inline GInt genericLShr(GInt a, GInt b, uint64_t bits) {
  // Refine
  if (b >= bits)
    return 0;

  if (bits != 32)
    nnvm_unimpl();
  GInt retInt = (uint32_t)a >> (uint32_t)b;
  return retInt;
}

static inline GInt genericAShr(GInt a, GInt b, uint64_t bits) {
  // Refine
  if (b >= bits)
    return 0;

  if (bits != 32)
    nnvm_unimpl();
  GInt retInt = sextOf((int32_t)a >> (int32_t)b, bits);
  return retInt;
}

static inline bool genericGetPowerOfTwo(GInt a, uint64_t bits, GInt &power) {
  for (int i = 0; i < bits; i++) {
    if (a == (1 << i)) {
      power = i;
      return true;
    }
  }

  return false;
}

static inline GInt genericEQ(GInt a, GInt b, uint64_t bits) { return a == b; }

static inline GInt genericNE(GInt a, GInt b, uint64_t bits) { return a != b; }

static inline GInt genericSLT(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  return (int32_t)a < (int32_t)b;
}

static inline GInt genericSGT(GInt a, GInt b, uint64_t bits) {
  if (bits != 32)
    nnvm_unimpl();
  return (int32_t)a > (int32_t)b;
}

} // namespace nnvm
