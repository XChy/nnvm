#include "RISCVBackend.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/Lower.h"
#include "Backend/RISCV/TrivialRA.h"

using namespace nnvm::riscv;

void RISCVBackend::emit(Module &ir, std::ostream &out) {
  // Add global symbols
  LowModule lowModule;
  LowerHelper lowerHelper;
  ISel isel;
  TrivialRA RA;

  lowerHelper.lower(ir, lowModule);
  for (auto *lowFunc : lowModule.funcs)
    isel.isel(*lowFunc);

  legalize(lowModule);
  for (auto *lowFunc : lowModule.funcs)
    RA.allocate(*lowFunc);

  EmitInfo info;
  for (auto &func : lowModule.funcs)
    for (auto *bb : func->BBs)
      info.allocBB(bb);

  lowModule.emit(out, info);
}

void RISCVBackend::legalize(LowModule &module) {
  for (auto *func : module.funcs) {
    for (auto *bb : func->BBs) {
      for (auto it = bb->insts.begin(); it != bb->insts.end(); it++) {
        uint64_t type = (uint64_t)it->type;
        if (it->type <= LowInst::ISA_BEGIN) {
          switch ((InstID)type) {
          case InstID::Load:
            if (it->operand[0].bitwidth() == 32) {
              it->type = LowInst::LW;
              it->operand[2] = it->operand[1];
              it->operand[1] = LowOperand::imm(0);
            }
            break;
          case InstID::Store:
            if (it->operand[0].bitwidth() == 32) {
              it->type = LowInst::SW;
              it->operand[2] = it->operand[1];
              it->operand[1] = LowOperand::imm(0);
            }
            break;
          case InstID::Stack: {
            LowOperand op = it->operand[0];
            LowOperand size = it->operand[1];
            // TODO: Too big stack?
            bb->insts.insert(
                it, LowInst{.type = LowInst::ADDI,
                            .operand = {getDef(getRegForStack()),
                                        getUse(getRegForStack()),
                                        LowOperand::imm(-size.immValue)}});
            *it = LowInst{LowInst::MV, {getDef(op), getUse(getRegForStack())}};
            break;
          }
          default:
            break;
          }
        }
      }
    }
  }
}
