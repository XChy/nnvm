#include "ISel.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowInstType.h"
using namespace nnvm;
using namespace nnvm::riscv;

void ISel::isel(LowFunc &func) {
  for (auto *bb : func.BBs)
    for (auto it = bb->insts.begin(); it != bb->insts.end();)
      it = combine(func, *bb, it);
}

LowBB::Iterator ISel::combine(LowFunc &func, LowBB &bb, LowBB::Iterator it) {
  uint64_t type = (uint64_t)it->type;
  if (it->type <= ISA_BEGIN) {
    switch ((InstID)type) {
    case InstID::Add:
      if (it->operand[1].isReg() && it->operand[2].isReg()) {
        it->type = ADD;
      } else {
        nnvm_unreachable("Not implemented")
      }
      break;
    case InstID::Load:
      if (it->operand[0].bitwidth() == 32) {
        it->type = LW;
        it->operand = {it->operand[0].def(), it->operand[1].use(),
                       LowOperand::imm(0)};
      }
      break;
    case InstID::Store:
      if (it->operand[0].bitwidth() == 32) {
        it->type = SW;
        it->operand = {it->operand[0].def(), it->operand[1].use(),
                       LowOperand::imm(0)};
      }
      break;
    case InstID::Stack:
      nnvm_unreachable("StackInst should not be in this stage");
    default:
      nnvm_unreachable("Not implemented");
    }
  }
  it++;
  return it;
}
