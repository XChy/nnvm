#pragma once
#include <IR/Instruction.h>
#include <Utils/Debug.h>
#include <cstdint>
#include <unordered_map>

#define MAKE_RFORMAT(GEN)                                                      \
  GEN(ADD), GEN(ADDW), GEN(SUB), GEN(SUBW), GEN(MUL), GEN(MULW), GEN(MULH),    \
      GEN(MULHSU), GEN(MULHU), GEN(DIV), GEN(DIVW), GEN(DIVU), GEN(DIVUW),     \
      GEN(REM), GEN(REMW), GEN(REMU), GEN(REMUW), GEN(SLL), GEN(SLLW),         \
      GEN(SLT), GEN(SLTU), GEN(XOR), GEN(SRL), GEN(SRLW), GEN(SRA), GEN(SRAW), \
      GEN(OR), GEN(AND)


#define MAKE_IFORMAT(GEN)                                                      

#define FOR_ENUM(x) x
#define FOR_NAME(x)                                                            \
  { LowInstType::x, #x }

namespace nnvm::riscv {

enum LowInstType : uint64_t {
  // ==== Middle IR Reserved ====
  // .....
  // ==== RISC-V Specific ====
  ISA_BEGIN = (uint64_t)InstID::INST_END + 1,

  BLT,
  RET, // ret
  JMP,

  // ==== R-format ====
  // <inst-name> rd, rs1, rs2
  R_BEGIN,
  MAKE_RFORMAT(FOR_ENUM),
  R_END,

  // ==== I-format ====
  // <inst-name> rd, rs, imm
  I_BEGIN,
  ADDI,
  LB,
  LW, // lw dst, offset(src)
  I_END,

  // ==== S-type ===
  // <inst-name> rs1, rs2, imm
  SB,
  SH,
  SW,
  SD,
  ISA_END
};

static inline const char *getNameForInstType(LowInstType type) {

  static std::unordered_map<LowInstType, const char *> typeToName = {
      MAKE_RFORMAT(FOR_NAME),
  };

  if (!typeToName.count(type)) {
    std::cerr << "The operator:" << (uint64_t)type << "\n";
    nnvm_unreachable("Not implemented yet");
  }
  return typeToName[type];
}

} /* namespace nnvm::riscv */
