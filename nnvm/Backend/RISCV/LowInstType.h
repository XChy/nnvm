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

#define MAKE_IFORMAT(GEN)                                                      \
  GEN(JALR), GEN(LB), GEN(LH), GEN(LW), GEN(LBU), GEN(LD), GEN(LHU),           \
      GEN(ADDI), GEN(SLTI), GEN(SLTIU), GEN(XORI), GEN(ORI), GEN(ANDI),        \
      GEN(SLLI), GEN(SRLI), GEN(SRAI), GEN(ADDIW), GEN(SLLIW), GEN(SRLIW),     \
      GEN(SRAIW)

#define MAKE_SFORMAT(GEN) GEN(SB), GEN(SH), GEN(SW), GEN(SD)

#define MAKE_BFORMAT(GEN)                                                      \
  GEN(BEQ), GEN(BNE), GEN(BLT), GEN(BGE), GEN(BLTU), GEN(BGEU)

#define MAKE_JFORMAT(GEN) GEN(JAL)

#define MAKE_UFORMAT(GEN) GEN(LUI), GEN(AUIPC)

#define MAKE_OTHER(GEN) GEN(CALL), GEN(LA)

#define FOR_ENUM(x) x
#define FOR_NAME(x)                                                            \
  { LowInstType::x, #x }

namespace nnvm::riscv {

enum LowInstType : uint64_t {
  // ==== Middle IR Reserved ====
  // .....
  // ==== RISC-V Specific ====
  ISA_BEGIN = (uint64_t)InstID::INST_END + 1,
  NONE,

  // ==== R-format ====
  // <inst-name> rd, rs1, rs2
  R_BEGIN,
  MAKE_RFORMAT(FOR_ENUM),
  R_END,

  // ==== I-format ====
  // <inst-name> rd, rs, imm
  // Exception: lb/h/w/d rd, label
  I_BEGIN,
  MAKE_IFORMAT(FOR_ENUM),
  I_END,

  // ==== S-format ====
  // <inst-name> rs2, rs1, imm (rs1 is the base address register)
  // Exception: sb/h/w/d rd, label
  S_BEGIN,
  MAKE_SFORMAT(FOR_ENUM),
  S_END,

  // ==== B-format ====
  // <inst-name> rs1, rs2, label
  B_BEGIN,
  MAKE_BFORMAT(FOR_ENUM),
  B_END,

  // ==== J-format ====
  // <inst-name> rd, label
  J_BEGIN,
  MAKE_JFORMAT(FOR_ENUM),
  J_END,

  // ==== U-format ====
  U_BEGIN,
  MAKE_UFORMAT(FOR_ENUM),
  U_END,

  // <inst-name> rd, imm

  // Other, like 'call' psuedo instruction
  OTHER_BEGIN,
  MAKE_OTHER(FOR_ENUM),
  OTHER_END,

  ISA_END
};

static inline const char *getNameForInstType(uint64_t type) {

  static std::unordered_map<uint64_t, const char *> typeToName = {
      MAKE_RFORMAT(FOR_NAME), MAKE_IFORMAT(FOR_NAME), MAKE_SFORMAT(FOR_NAME),
      MAKE_BFORMAT(FOR_NAME), MAKE_JFORMAT(FOR_NAME), MAKE_UFORMAT(FOR_NAME),
      MAKE_OTHER(FOR_NAME)};

  if (!typeToName.count(type)) {
    std::cerr << "Handling the operator:" << (uint64_t)type << "\n";
    nnvm_unreachable("Not implemented yet");
  }
  return typeToName[type];
}

static inline LowInstType toIFormat(uint64_t type) {
  static std::unordered_map<uint64_t, LowInstType> map = {
      {ADD, ADDI}, {ADDW, ADDIW}, {XOR, XORI},
      {AND, ANDI}, {OR, ORI},     {SLT, SLTI}};

  if (map.count(type))
    return map[type];
  return NONE;
}

static inline bool isCommutative(uint64_t type) {
  if (type > R_BEGIN && type < R_END) {
    switch (type) {
    case ADD:
    case ADDW:
    case MUL:
    case MULW:
    case XOR:
    case AND:
    case OR:
      return true;
    default:
      return false;
    }
  }

  nnvm_unreachable("Not a illegal operator");
}

} /* namespace nnvm::riscv */
