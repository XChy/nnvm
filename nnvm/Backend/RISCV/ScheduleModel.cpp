#include "ScheduleModel.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include "Info/InstLatency.h"
#include "Utils/Debug.h"
#include <algorithm>

using namespace nnvm::riscv;

bool U74ScheduleModel::areAllUsedRegFree(LIRInst *inst, int latency) {
  for (auto op : inst->operands) {
    if (!op.isUse() || !op.getOperand()->isReg())
      continue;
    Register *reg = op.getOperand()->as<Register>();
    if (timeReg[reg] > latency)
      return false;
  }
  return true;
}

bool U74ScheduleModel::canIssue(LIRInst *inst) {
  if (numFreePipe == 0)
    return false;

  if (pattern::isLoadOrStore(inst))
    return isFree(Memory) && areAllUsedRegFree(inst);

  switch (inst->getOpcode()) {
  case FADD_S:
  case FSUB_S:
  case FMUL_S:
  case FMADD_S:
  case FMSUB_S:
  case FNMADD_S:
  case FNMSUB_S:
  case FMV_X_W:
  case FCVT_S_W:
  case FCVT_S_WU:
  case FMV_W_X:
  case FSGNJ_S:
  case FSGNJ_D:
    return isFree(FPU) && areAllUsedRegFree(inst);
  case FDIV_S:
    return isFree(FPU) && canUseRes(FDIV) && areAllUsedRegFree(inst);
  case MUL:
  case MULW:
  case MULH:
  case MULHU:
  case MULHSU:
    return isFree(MulOrDiv) && areAllUsedRegFree(inst);
  case DIV:
  case DIVU:
  case DIVW:
  case DIVUW:
  case REM:
  case REMU:
  case REMW:
  case REMUW:
    return isFree(MulOrDiv) && canUseRes(IDIV) && areAllUsedRegFree(inst);
  default:
    return areAllUsedRegFree(inst);
    // std::cerr << "Unknown issue opcode:" << inst->getOpcode() << "\n";
    // nnvm_unimpl();
  }
  return true;
}

void U74ScheduleModel::issue(LIRInst *inst) {
  numFreePipe--;
  if (pattern::isLoadOrStore(inst))
    addConstraint(Memory);

  switch (inst->getOpcode()) {
  case FDIV_S:
    addConstraint(FPU);
    useRes(FDIV, getLatency(inst));
    break;
  case FADD_S:
  case FSUB_S:
  case FMUL_S:
  case FMADD_S:
  case FMSUB_S:
  case FNMADD_S:
  case FNMSUB_S:
  case FMV_X_W:
  case FCVT_S_W:
  case FCVT_S_WU:
  case FMV_W_X:
  case FSGNJ_S:
  case FSGNJ_D:
    addConstraint(FPU);
    break;
  case DIV:
  case DIVU:
  case DIVW:
  case DIVUW:
  case REM:
  case REMU:
  case REMW:
  case REMUW:
    addConstraint(MulOrDiv);
    useRes(IDIV, getLatency(inst));
    break;
  }

  for (auto op : inst->operands) {
    if (!op.isDef() || !op.getOperand()->isReg())
      continue;
    Register *reg = op.getOperand()->as<Register>();
    timeReg[reg] = getLatency(inst);
  }
}

void U74ScheduleModel::step() {
  numFreePipe = issueWidth;

  for (auto &[reg, time] : timeReg)
    time = std::max(time - 1, 0);

  for (auto &[res, time] : timeRes)
    time = std::max(time - 1, 0);

  issueConstraint.clear();
}
