#pragma once
#include <IR/Instruction.h>
#include <Utils/Debug.h>
#include <cstdint>
#include <regex>
#include <unordered_map>

#define MAKE_RFORMAT(GEN)                                                      \
  GEN(ADD), GEN(ADDW), GEN(SUB), GEN(SUBW), GEN(MUL), GEN(MULW), GEN(MULH),    \
      GEN(MULHSU), GEN(MULHU), GEN(DIV), GEN(DIVW), GEN(DIVU), GEN(DIVUW),     \
      GEN(REM), GEN(REMW), GEN(REMU), GEN(REMUW), GEN(SLL), GEN(SLLW),         \
      GEN(SLT), GEN(SLTU), GEN(XOR), GEN(SRL), GEN(SRLW), GEN(SRA), GEN(SRAW), \
      GEN(OR), GEN(AND), GEN(SH1ADD), GEN(SH2ADD), GEN(SH3ADD), GEN(MIN),      \
      GEN(MAX), GEN(MINU), GEN(MAXU)

#define MAKE_IFORMAT(GEN)                                                      \
  GEN(JALR), GEN(LB), GEN(LH), GEN(LW), GEN(LBU), GEN(LD), GEN(LHU),           \
      GEN(ADDI), GEN(SLTI), GEN(SLTIU), GEN(XORI), GEN(ORI), GEN(ANDI),        \
      GEN(SLLI), GEN(SRLI), GEN(SRAI), GEN(ADDIW), GEN(SLLIW), GEN(SRLIW),     \
      GEN(SRAIW), GEN(FLW), GEN(FLD)

#define MAKE_SFORMAT(GEN) GEN(SB), GEN(SH), GEN(SW), GEN(SD), GEN(FSW), GEN(FSD)

#define MAKE_BFORMAT(GEN)                                                      \
  GEN(BEQ), GEN(BNE), GEN(BLT), GEN(BGE), GEN(BLTU), GEN(BGEU)

#define MAKE_JFORMAT(GEN) GEN(JAL)

#define MAKE_UFORMAT(GEN) GEN(LUI), GEN(AUIPC)

#define MAKE_FFORMAT(GEN)                                                      \
  GEN(FADD_S), GEN(FSUB_S), GEN(FMUL_S), GEN(FDIV_S), GEN(FSQRT_S),            \
      GEN(FMADD_S), GEN(FMSUB_S), GEN(FNMADD_S), GEN(FNMSUB_S), GEN(FMIN_S),   \
      GEN(FMAX_S), GEN(FCVT_W_S), GEN(FCVT_L_S), GEN(FCVT_S_W), GEN(FCVT_S_L), \
      GEN(FCVT_WU_S), GEN(FCVT_LU_S), GEN(FCVT_S_WU), GEN(FCVT_S_LU),          \
      GEN(FSGNJ_S), GEN(FSGNJN_S), GEN(FSGNJX_S), GEN(FMV_X_W), GEN(FMV_W_X),  \
      GEN(FMV_X_S), GEN(FMV_S_X), GEN(FEQ_S), GEN(FLT_S), GEN(FLE_S),          \
      GEN(FCLASS_S), GEN(FADD), GEN(FSUB), GEN(FMUL), GEN(FDIV), GEN(FSQRT),   \
      GEN(FMADD), GEN(FMSUB), GEN(FNMADD), GEN(FNMSUB), GEN(FMIN), GEN(FMAX),  \
      GEN(FCVT_W_D), GEN(FCVT_L_D), GEN(FCVT_D_W), GEN(FCVT_D_L),              \
      GEN(FCVT_WU_D), GEN(FCVT_LU_D), GEN(FCVT_D_WU), GEN(FCVT_D_LU),          \
      GEN(FCVT_S_D), GEN(FCVT_D_S), GEN(FSGNJ_D), GEN(FSGNJN_D),               \
      GEN(FSGNJX_D), GEN(FMV_X_D), GEN(FMV_D_X), GEN(FEQ_D), GEN(FLT_D),       \
      GEN(FLE_D), GEN(FCLASS_D)

#define MAKE_OTHER(GEN) GEN(CALL), GEN(LA)

#define FOR_ENUM(x) x
#define FOR_NAME(x)                                                            \
  { LIRInstID::x, std::string(#x) }

namespace nnvm::riscv {

enum LIRInstID : uint64_t {
  // ==== Middle IR Reserved ====
  // .....
  // ==== Generic ====
  IMPLICIT_JUMP,
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

  // ==== F-format ===
  F_BEGIN,
  MAKE_FFORMAT(FOR_ENUM),
  F_END,

  // <inst-name> rd, imm

  // Other, like 'call' psuedo instruction
  OTHER_BEGIN,
  MAKE_OTHER(FOR_ENUM),
  OTHER_END,

  ISA_END
};

static inline const char *getNameForInstType(uint64_t type) {

  static std::unordered_map<uint64_t, std::string> typeToName = {
      MAKE_RFORMAT(FOR_NAME), MAKE_IFORMAT(FOR_NAME), MAKE_SFORMAT(FOR_NAME),
      MAKE_BFORMAT(FOR_NAME), MAKE_JFORMAT(FOR_NAME), MAKE_UFORMAT(FOR_NAME),
      MAKE_FFORMAT(FOR_NAME), MAKE_OTHER(FOR_NAME)};

  // replace all underline to dot. e.g. FCVT_S_W -> FCVT.S.W
  for (auto &[_, name] : typeToName) {
    std::regex_replace(name.begin(), name.cbegin(), name.cend(),
                       std::regex("_"), ".");
  }

  if (!typeToName.count(type)) {
    std::cerr << "Handling the operator:" << type << "\n";
    nnvm_unreachable("Not implemented yet");
  }
  return typeToName[type].c_str();
}

static inline LIRInstID toIFormat(uint64_t type) {
  static std::unordered_map<uint64_t, LIRInstID> map = {
      {ADD, ADDI}, {ADDW, ADDIW}, {XOR, XORI},   {AND, ANDI},
      {OR, ORI},   {SLT, SLTI},   {SLL, SLLI},   {SLLW, SLLIW},
      {SRL, SRLI}, {SRA, SRAI},   {SRLW, SRLIW}, {SRAW, SRAIW}};

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
