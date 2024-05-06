#include "ISel.h"
#include "Backend/RISCV/CodegenInfo.h"
using namespace nnvm;
using namespace nnvm::riscv;

void ISel::isel(LowFunc &func) {
  for (auto *bb : func.BBs) {
    for (auto it = bb->insts.begin(); it != bb->insts.end(); it++) {
      uint64_t type = (uint64_t)it->type;
      if (it->type <= LowInst::ISA_BEGIN) {
        switch ((InstID)type) {
        case InstID::Add:
          if (it->operand[1].isReg() && it->operand[2].isReg()) {
            it->type = LowInst::ADD;
          } else {
            nnvm_unreachable("Not implemented")
          }
          break;
        case InstID::Load:
          if (it->operand[0].bitwidth() == 32) {
            it->type = LowInst::LW;
            it->operand = {it->operand[0], LowOperand::imm(0), it->operand[1]};
          }
          break;
        case InstID::Store:
          if (it->operand[0].bitwidth() == 32) {
            it->type = LowInst::SW;
            it->operand = {it->operand[0], LowOperand::imm(0), it->operand[1]};
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
