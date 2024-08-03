#include "ScheduleModel.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include "Utils/Debug.h"
#include <algorithm>

using namespace nnvm::riscv;

bool U74ScheduleModel::areAllUsedRegFree(LIRInst *inst, uint latency) {
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
  case ADD:
    return areAllUsedRegFree(inst);
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
  case FDIV_S:
    return isFree(FPU) && areAllUsedRegFree(inst);
  case MUL:
  case MULW:
  case MULH:
  case MULHU:
  case MULHSU:
  case DIV:
  case DIVU:
  case DIVW:
  case DIVUW:
  case REM:
  case REMU:
  case REMW:
  case REMUW:
    return isFree(MulOrDiv) && areAllUsedRegFree(inst);
  default:
    std::cerr << "Unknown issue opcode" << inst->getOpcode() << "\n";
    nnvm_unimpl();
  }
  return true;
}

void U74ScheduleModel::issue(LIRInst *inst) {
  numFreePipe--;
  if (pattern::isLoadOrStore(inst)) {
    addConstraint(Memory);
    timeReg[inst->getOp(0)->as<Register>()] = 3;
  }
}

void U74ScheduleModel::step() {

  for (auto &[reg, time] : timeReg)
    time = std::max(time - 1, 0u);

  for (auto &[res, time] : timeRes)
    time = std::max(time - 1, 0u);

  issueConstraint.clear();
}
