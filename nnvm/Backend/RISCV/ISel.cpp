#include "ISel.h"
#include "ADT/GenericInt.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include <utility>
using namespace nnvm;
using namespace nnvm::riscv;

void ISel::isel(LowFunc &func) {
  for (auto *bb : func.BBs)
    for (auto it = bb->insts.begin(); it != bb->insts.end();)
      it = combine(func, *bb, it);

  for (auto *bb : func.BBs)
    for (auto it = bb->insts.begin(); it != bb->insts.end();)
      it = handleConstant(func, *bb, it);
}

LowBB::Iterator ISel::combine(LowFunc &func, LowBB &bb, LowBB::Iterator it) {
  uint64_t type = (uint64_t)it->type;
  if (it->type <= ISA_BEGIN) {
    switch ((InstID)type) {
    case InstID::Add:
      it->type = ADD;
      break;
    case InstID::Sub:
      it->type = SUB;
      break;
    case InstID::Load:
      *it = LowInst::create(getLoadInstType(it->operand[0].valueType),
                            it->operand[0], it->operand[1], LowOperand::imm(0));
      break;
    case InstID::Store:
      *it = LowInst::create(getStoreInstType(it->operand[0].valueType),
                            it->operand[0], it->operand[1], LowOperand::imm(0));
      break;
    case InstID::ICmp: {
      uint64_t predicate = it->operand[3].immValue;
      if (predicate == ICmpInst::EQ) {
        auto middle = func.allocVReg(it->operand[0].valueType);
        bb.insertBefore(
            it, LowInst::create(XOR, middle, it->operand[1], it->operand[2]));
        *it =
            LowInst::create(SLTIU, it->operand[0], middle, LowOperand::imm(1));
      } else if (predicate == ICmpInst::NE) {
        auto middle = func.allocVReg(it->operand[0].valueType);
        bb.insertBefore(
            it, LowInst::create(XOR, middle, it->operand[1], it->operand[2]));
        *it = LowInst::create(SLTU, it->operand[0],
                              getZeroReg(it->operand[0].valueType), middle);

      } else {
        nnvm_unreachable("Unimplemented");
      }
    } break;
    case InstID::Stack:
      nnvm_unreachable("StackInst should not be in this stage");
    default:
      nnvm_unreachable("Not implemented");
    }
  }
  it++;
  return it;
}

LowBB::Iterator ISel::handleConstant(LowFunc &func, LowBB &bb,
                                     LowBB::Iterator it) {
  if (it->type > R_BEGIN && it->type < R_END) {
    LowOperand &rs1 = it->operand[1];
    LowOperand &rs2 = it->operand[2];
    // FIXME: what if not commutable
    if (rs1.type == LowOperand::Constant)
      std::swap(rs1, rs2);

    if (rs2.type == LowOperand::Constant) {
      if (rs2.immValue == 0) {
        rs2 = getZeroReg(rs2.valueType);
      } else if (canExpressInBits<12>(rs2.immValue)) {
        uint64_t iType = toIFormat(it->type);
        if (iType != NONE) {
          it->type = iType;
          rs2 = LowOperand::imm(rs2.immValue);
        } else {
          nnvm_unreachable("Not implemented");
        }
      } else {
        nnvm_unreachable("Not implemented");
      }
    }
  }

  it++;
  return it;
}
