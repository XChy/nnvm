#pragma once
#include <IR/Instruction.h>
#include <Utils/Debug.h>
#include <algorithm>
#include <cctype>
#include <cstdint>
#include <set>
#include <string>
#include <unordered_map>
#include <unordered_set>
#include <vector>

#define MAKE_GPR(GEN)                                                          \
  GEN(ZERO), GEN(RA), GEN(SP), GEN(GP), GEN(TP), GEN(T0), GEN(T1), GEN(T2),    \
      GEN(S0), GEN(S1), GEN(A0), GEN(A1), GEN(A2), GEN(A3), GEN(A4), GEN(A5),  \
      GEN(A6), GEN(A7), GEN(S2), GEN(S3), GEN(S4), GEN(S5), GEN(S6), GEN(S7),  \
      GEN(S8), GEN(S9), GEN(S10), GEN(S11), GEN(T3), GEN(T4), GEN(T5), GEN(T6)

#define MAKE_FPR(GEN)                                                          \
  GEN(FT0), GEN(FT1), GEN(FT2), GEN(FT3), GEN(FT4), GEN(FT5), GEN(FT6),        \
      GEN(FT7), GEN(FS0), GEN(FS1), GEN(FA0), GEN(FA1), GEN(FA2), GEN(FA3),    \
      GEN(FA4), GEN(FA5), GEN(FA6), GEN(FA7), GEN(FS2), GEN(FS3), GEN(FS4),    \
      GEN(FS5), GEN(FS6), GEN(FS7), GEN(FS8), GEN(FS9), GEN(FS10), GEN(FS11),  \
      GEN(FT8), GEN(FT9), GEN(FT10), GEN(FT11)

#define FOR_ENUM(x) x
#define FOR_NAME(x)                                                            \
  { RegisterID::x, #x }

namespace nnvm::riscv {

enum RegisterID : uint64_t {
  PR_BEGIN = 0,
  GPR_BEGIN,
  MAKE_GPR(FOR_ENUM),
  GPR_END,

  FPR_BEGIN,
  MAKE_FPR(FOR_ENUM),
  FPR_END,
  PR_END,

  VR_BEGIN,
};

static inline std::string getNameForRegister(uint64_t type) {

  static std::unordered_map<uint64_t, std::string> nameMap = {
      MAKE_GPR(FOR_NAME), MAKE_FPR(FOR_NAME)};

  if (type >= VR_BEGIN)
    return "v" + std::to_string(type - VR_BEGIN);

  auto ret = nameMap[type];
  std::transform(ret.begin(), ret.end(), ret.begin(),
                 [](char c) { return std::tolower(c); });
  return ret;
}

static inline std::set<uint64_t> callerSavedRegIds() {
  return {RA,  T0,  T1,   T3,   T4,  T5,  T6,  T2,  A0,  A1,  A2,  A3,
          A4,  A5,  A6,   A7,   FT0, FT1, FT2, FT3, FT4, FT5, FT6, FT7,
          FT8, FT9, FT10, FT11, FA0, FA1, FA2, FA3, FA4, FA5, FA6, FA7};
}

static inline std::set<uint64_t> calleeSavedRegs() {
  return {SP,  S0,  S1,  S2,  S3,  S4,  S5,  S6,  S7,  S8,  S9,   S10, S11,
          FS0, FS1, FS2, FS3, FS4, FS5, FS6, FS7, FS8, FS9, FS10, FS11};
}
static inline bool isAlwaysPreserved(uint64_t reg) {
  return std::unordered_set<uint64_t>{SP}.count(reg);
}

} /* namespace nnvm::riscv */
