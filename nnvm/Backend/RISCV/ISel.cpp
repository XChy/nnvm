#include "ISel.h"
#include "ADT/GenericInt.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
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

void riscv::loadConstantToReg(LowBB &bb, LowBB::Iterator it,
                              LowOperand constant, LowOperand reg) {
  if (canExpressInBits<12>(constant.immValue)) {
    auto load = LowInst::create(ADDI, reg, getZeroReg(constant.valueType),
                                LowOperand::imm(constant.immValue));
    bb.insertBefore(it, load);
    return;
  }

  if (canExpressInBits<32>(constant.immValue)) {
    auto auipc = LowInst::create(
        AUIPC, reg, LowOperand::imm(((int64_t)constant.immValue) >> 12));
    auto load = LowInst::create(ADDI, reg, reg,
                                LowOperand::imm(constant.immValue & 0xFFF));
    bb.insertBefore(it, auipc);
    bb.insertBefore(it, load);
    return;
  }

  nnvm_unreachable("How to handle big constant, especially for i64?")
}

void riscv::loadRegPlusConstantToReg(LowBB &bb, LowBB::Iterator it,
                                     LowOperand srcReg, LowOperand constant,
                                     LowOperand destReg) {
  if (canExpressInBits<12>(constant.immValue)) {
    auto load = LowInst::create(ADDI, destReg, srcReg,
                                LowOperand::imm(constant.immValue));
    bb.insertBefore(it, load);
    return;
  }

  loadConstantToReg(bb, it, constant, destReg);
  auto addDestAndSrc = LowInst::create(ADD, destReg, destReg, srcReg);
  bb.insertBefore(it, addDestAndSrc);
}

void riscv::loadGlobalToReg(LowBB &bb, LowBB::Iterator it, LowOperand global,
                            LowOperand reg) {
  // TODO: replace the pseudocode "LA" with "%pcrel_hi & %pcrel_lo"
  // auto auipc = LowInst::create(AUIPC, reg, global);
  // auto addi = LowInst::create(ADDI, reg, reg, global);

  // bb.insertBefore(it, auipc);
  // bb.insertBefore(it, addi);
  auto la = LowInst::create(LA, reg, global);
  bb.insertBefore(it, la);
  return;
}

static inline LowInstType
materializeArithmeticInstType(uint64_t instID,
                              LowOperand::LowValueType operandType) {
  if (operandType == LowOperand::i32) {
    switch ((InstID)instID) {
    case InstID::Add:
      return ADDW;
    case InstID::Sub:
      return SUBW;
    case InstID::Mul:
      return MULW;
    case InstID::SDiv:
      return DIVW;
    case InstID::UDiv:
      return DIVUW;
    case InstID::SRem:
      return REMW;
    case InstID::URem:
      return REMUW;
    default:
      nnvm_unreachable("No implemented");
    }
  }

  if (operandType == LowOperand::i64) {
    switch ((InstID)instID) {
    case InstID::Add:
      return ADD;
    case InstID::Sub:
      return SUB;
    case InstID::Mul:
      return MUL;
    case InstID::SDiv:
      return DIV;
    case InstID::UDiv:
      return DIVU;
    case InstID::SRem:
      return REM;
    case InstID::URem:
      return REMU;
    default:
      nnvm_unreachable("No implemented");
    }
  }

  nnvm_unreachable("No implemented");
}

LowBB::Iterator ISel::combine(LowFunc &func, LowBB &bb, LowBB::Iterator it) {
  uint64_t type = (uint64_t)it->type;
  if (it->type <= ISA_BEGIN) {
    switch ((InstID)type) {
    case InstID::Add:
    case InstID::Sub:
    case InstID::Mul:
    case InstID::SDiv:
    case InstID::UDiv:
    case InstID::SRem:
    case InstID::URem:
      it->type = materializeArithmeticInstType(type, it->operand[1].valueType);
      break;
    case InstID::PtrAdd:
      it->type = ADD;
      break;
    case InstID::Load:
      *it = LowInst::create(getLoadInstType(it->operand[0].valueType),
                            it->operand[0], it->operand[1], LowOperand::imm(0));
      break;
    case InstID::Store:
      *it = LowInst::create(getStoreInstType(it->operand[0].valueType),
                            it->operand[0], it->operand[1], LowOperand::imm(0));
      break;
    case InstID::ZExt:
      *it = LowInst::create(ADDI, it->operand[0], it->operand[1],
                            LowOperand::imm(0));
      break;
    case InstID::ICmp: {
      uint64_t predicate = it->operand[3].immValue;
      switch (predicate) {
      case ICmpInst::EQ: {
        auto middle = func.allocVReg(it->operand[0].valueType);
        bb.insertBefore(
            it, LowInst::create(XOR, middle, it->operand[1], it->operand[2]));
        *it =
            LowInst::create(SLTIU, it->operand[0], middle, LowOperand::imm(1));
        break;
      }
      case ICmpInst::NE: {
        auto middle = func.allocVReg(it->operand[0].valueType);
        bb.insertBefore(
            it, LowInst::create(XOR, middle, it->operand[1], it->operand[2]));
        *it = LowInst::create(SLTU, it->operand[0],
                              getZeroReg(it->operand[0].valueType), middle);
        break;
      }

        // a > b  -->  b < a
      case ICmpInst::SGT:
        std::swap(it->operand[1], it->operand[2]);
        // fallthrough
      case ICmpInst::SLT:
        *it = LowInst::create(SLT, it->operand[0], it->operand[1],
                              it->operand[2]);
        break;

        // a <= b  -->  not(a > b) --> not(b < a)
        // a >= b  -->  not(a < b)
      case ICmpInst::SLE:
        std::swap(it->operand[1], it->operand[2]);
        // fallthrough
      case ICmpInst::SGE:
        bb.insertBefore(it, LowInst::create(SLT, it->operand[0], it->operand[1],
                                            it->operand[2]));
        *it = LowInst::create(XORI, it->operand[0], it->operand[0],
                              LowOperand::imm(1));
        break;

      case ICmpInst::UGT:
        std::swap(it->operand[1], it->operand[2]);
        // fallthrough
      case ICmpInst::ULT:
        *it = LowInst::create(SLTU, it->operand[0], it->operand[1],
                              it->operand[2]);
        break;

      default:
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

    if (rs1.isConstant()) {
      if (isCommutative(it->type))
        std::swap(rs1, rs2);

      // TODO: WTF? How to handle constant fold in backend??
      if (rs1.isConstant()) {
        auto vregForImm = func.allocVReg(rs1.valueType);
        loadConstantToReg(bb, it, rs1, vregForImm);
        rs1 = vregForImm.use();
      }
    }

    if (rs2.isConstant()) {
      if (rs2.immValue == 0) {
        rs2 = getZeroReg(rs2.valueType);
      } else if (canExpressInBits<12>(rs2.immValue) &&
                 toIFormat(it->type) != NONE) {
        uint64_t iType = toIFormat(it->type);
        it->type = iType;
        rs2 = LowOperand::imm(rs2.immValue);
      } else {
        auto vregForImm = func.allocVReg(rs2.valueType);
        loadConstantToReg(bb, it, rs2, vregForImm);
        it->operand[2] = vregForImm.use();
      }
    }
  } else if (it->type > S_BEGIN && it->type < S_END) {
    LowOperand &rs2 = it->operand[0];
    LowOperand &rs1 = it->operand[1];

    if (rs1.type == LowOperand::GlobalVar) {
      auto vregForAddress = func.allocVReg(LowOperand::i64);
      loadGlobalToReg(bb, it, rs1, vregForAddress);
      rs1 = vregForAddress.use();
    }

    if (rs2.isConstant()) {
      auto vregForImm = func.allocVReg(rs2.valueType);
      loadConstantToReg(bb, it, rs2, vregForImm);
      it->operand[0] = vregForImm.use();
    }
  }

  for (LowOperand &r : it->operand) {
    if (r.type == LowOperand::GlobalVar) {
      auto vregForAddress = func.allocVReg(LowOperand::i64);
      loadGlobalToReg(bb, it, r, vregForAddress);
      r = vregForAddress.use();
    } else if (r.isConstant()) {
      auto vregForImm = func.allocVReg(r.valueType);
      loadConstantToReg(bb, it, r, vregForImm);
      it->operand[0] = vregForImm.use();
    }
  }

  it++;
  return it;
}
