#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"

namespace nnvm::riscv {

static inline uint getLatency(LIRInst *inst) {
  switch (inst->getOpcode()) {
  case MUL:
  case MULW:
  case MULH:
  case MULHSU:
  case MULHU:
    return 3;
  case DIV:
  case DIVU:
  case REM:
  case REMU:
    return 68;
  case DIVW:
  case DIVUW:
  case REMW:
  case REMUW:
    return 34;
  case LB:
  case LH:
  case LW:
  case LBU:
  case LD:
  case LHU:
    return 3;
  case SB:
  case SH:
  case SW:
  case SD:
    return 1;
  case FLW:
    return 2;
  case FSW:
    return 4;
  case FADD_S:
  case FSUB_S:
  case FMUL_S:
    return 5;
  case FDIV_S:
    return 36;
  case FSQRT_S:
    return 28;
  case FMADD_S:
  case FMSUB_S:
  case FNMADD_S:
  case FNMSUB_S:
    return 5;
  case FMIN_S:
  case FMAX_S:
    return 2;
  case FCVT_W_S:
  case FCVT_L_S:
    return 4;
  case FCVT_S_W:
    return 2;
  case FCVT_S_L:
  case FCVT_WU_S:
  case FCVT_LU_S:
    return 4;
  case FCVT_S_WU:
    return 2;
  case FCVT_S_LU:
    return 4;
  case FSGNJ_S:
  case FSGNJN_S:
  case FSGNJX_S:
    return 2;
  case FMV_X_W:
  case FMV_W_X:
  case FMV_X_S:
  case FMV_S_X:
    return 2;
  case FEQ_S:
  case FLT_S:
  case FLE_S:
  case FCLASS_S:
    return 4;
  case LA:
    return 2;
  case CALL:
    return 1;
  default:
    return 1;
  }
}

} /* namespace nnvm::riscv */
