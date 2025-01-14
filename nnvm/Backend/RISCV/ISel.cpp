#include "ISel.h"
#include "ADT/GenericInt.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/PhiResolution.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <utility>
using namespace nnvm;
using namespace nnvm::riscv;

void ISel::isel(LIRFunc &func) {
  LIRBuilder builder(*func.getParent());

  for (auto *bb : func) {
    for (auto cur : incChange(*bb)) {
      debug(EmitInfo info; cur->emit(std::cerr, info); std::cerr << "\n";);

      builder.setInsertPoint(bb, cur);

      // Remove the original instructions
      if (auto *I = combine(builder, cur))
        cur->eraseFromList();
    }
  }

  for (auto *bb : func) {
    for (auto cur : incChange(*bb)) {
      builder.setInsertPoint(bb, cur);
      if (auto *I = expand(builder, cur))
        cur->eraseFromList();
    }
  }

  debug({
    std::cerr << "====After combining====:\n";
    EmitInfo info;
    func.emit(std::cerr, info);
  });

  PhiResolution phiResolution;
  phiResolution.resolve(func);

  debug({
    std::cerr << "====After phi resolution====:\n";
    EmitInfo info;
    func.emit(std::cerr, info);
  });

  for (auto *bb : func) {
    for (auto cur : incChange(*bb)) {
      builder.setInsertPoint(bb, cur);

      // Remove the original instructions
      if (auto *I = legalizeOperands(builder, cur))
        cur->eraseFromList();
    }
  }
}

void riscv::loadGlobalToReg(LIRBuilder &builder, LIRGlobalVar *global,
                            Register *reg) {
  // TODO: replace the pseudocode "LA" with "%pcrel_hi & %pcrel_lo"
  builder.addInst(LIRInst::create(LA, reg, global));
}

static inline LIRInstID
materializeArithmeticInstType(uint64_t instID, LIRValueType operandType) {

  if (operandType == LIRValueType::i1 || operandType == LIRValueType::i32 ||
      operandType == LIRValueType::i64) {
    switch ((InstID)instID) {
    case InstID::And:
      return AND;
    case InstID::Or:
      return OR;
    case InstID::Xor:
      return XOR;
    case InstID::SMin:
      return MIN;
    case InstID::SMax:
      return MAX;
    case InstID::UMax:
      return MAXU;
    case InstID::UMin:
      return MINU;
    default:
      break;
    }
  }

  if (operandType == LIRValueType::i32) {
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
    case InstID::Shl:
      return LIRInstID::SLLW;
    case InstID::AShr:
      return LIRInstID::SRAW;
    case InstID::LShr:
      return LIRInstID::SRLW;
    case InstID::SRem:
      return REMW;
    case InstID::URem:
      return REMUW;
    default:
      nnvm_unreachable("No implemented");
    }
  }

  if (operandType == LIRValueType::i64) {
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
    case InstID::Shl:
      return LIRInstID::SLL;
    case InstID::AShr:
      return LIRInstID::SRA;
    case InstID::LShr:
      return LIRInstID::SRL;
    case InstID::SRem:
      return REM;
    case InstID::URem:
      return REMU;
    default:
      nnvm_unimpl();
    }
  }

  if (operandType == LIRValueType::Float) {
    switch ((InstID)instID) {
    case InstID::FAdd:
      return FADD_S;
    case InstID::FSub:
      return FSUB_S;
    case InstID::FMul:
      return FMUL_S;
    case InstID::FDiv:
      return FDIV_S;
    default:
      nnvm_unimpl();
    }
  }

  std::cerr << "The operand type: " << (uint64_t)operandType << "\n";
  nnvm_unreachable("No implemented");
}

LIRInst *ISel::combine(LIRBuilder &builder, LIRInst *I) {
  uint64_t type = I->type;
  if (I->type <= ISA_BEGIN) {
    switch ((InstID)type) {
    case InstID::Add:
    case InstID::Sub:
    case InstID::Mul:
    case InstID::SDiv:
    case InstID::UDiv:
    case InstID::And:
    case InstID::Or:
    case InstID::Xor:
    case InstID::Shl:
    case InstID::AShr:
    case InstID::LShr:
    case InstID::SRem:
    case InstID::URem:
    case InstID::FAdd:
    case InstID::FSub:
    case InstID::FMul:
    case InstID::FDiv:
    case InstID::SMin:
    case InstID::SMax:
    case InstID::UMin:
    case InstID::UMax:
      // TODO: the type of operator is not that accurate, we should lower them
      // before doing such thing.
      {
        I->setOpcode(
            materializeArithmeticInstType(type, I->getOp(1)->getType()));
        break;
      }
    case InstID::PtrAdd:
      I->setOpcode(ADD);
      break;

    case InstID::Load: {
      auto *newInst =
          LIRInst::create(getLoadInstType(I->getOp(0)->getType()), I->getOp(0),
                          I->getOp(1), LIRImm::create(0));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::Store: {
      auto *newInst =
          LIRInst::createAllUse(getStoreInstType(I->getOp(0)->getType()),
                                I->getOp(0), I->getOp(1), LIRImm::create(0));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::Phi:
      return nullptr;

    case InstID::FNeg: {
      auto *newInst =
          LIRInst::create(FSGNJN_S, I->getOp(0), I->getOp(1), I->getOp(1));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::Pin:
      return builder.copy(I->getOp(1), I->getOp(0)->as<Register>());

    case InstID::ZExt: {
      I->getOp(1)->setType(I->getOp(0)->getType());
      auto *newInst =
          LIRInst::create(ADD, I->getOp(0), I->getOp(1), builder.phyReg(ZERO));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::F2SI: {
      uint64_t convertOpcode =
          I->getOp(0)->getType() == LIRValueType::i64 ? FCVT_L_S : FCVT_W_S;
      auto *newInst = LIRInst::create(convertOpcode, I->getOp(0), I->getOp(1),
                                      getRoundingModeValue(RTZ));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::SI2F: {
      uint64_t convertOpcode =
          I->getOp(1)->getType() == LIRValueType::i64 ? FCVT_S_L : FCVT_S_W;
      auto *newInst = LIRInst::create(convertOpcode, I->getOp(0), I->getOp(1));
      builder.addInst(newInst);
      return newInst;
    }

    case InstID::ICmp: {
      uint64_t predicate = I->getOp(3)->as<LIRImm>()->getValue();
      LIRValue *dest = I->getOp(0);
      LIRValue *lhs = I->getOp(1);
      LIRValue *rhs = I->getOp(2);
      switch (predicate) {

      case ICmpInst::EQ: {
        // a == b  -->   (a ^ b) == 0 --> (a ^ b) u< 1
        auto middle = builder.newVReg(lhs->getType());
        builder.addInst(LIRInst::create(XOR, middle, lhs, rhs));
        auto last = LIRInst::create(SLTIU, dest, middle, LIRImm::create(1));
        builder.addInst(last);
        return last;
      }

        // a != b  -->  (a ^ b) == 0  -->  (a ^ b) u> 0  -->  0 u< (a ^ b)
      case ICmpInst::NE: {
        auto middle = builder.newVReg(lhs->getType());
        builder.addInst(LIRInst::create(XOR, middle, lhs, rhs));
        auto last = LIRInst::create(SLTU, dest, builder.phyReg(ZERO), middle);
        builder.addInst(last);
        return last;
      }

        // a > b  -->  b < a
      case ICmpInst::SGT:
        std::swap(lhs, rhs);
        // fallthrough
      case ICmpInst::SLT: {
        auto newInst = LIRInst::create(SLT, dest, lhs, rhs);
        builder.addInst(newInst);
        return newInst;
      }

        // a <= b  -->  not(a > b) --> not(b < a)
        // a >= b  -->  not(a < b)
      case ICmpInst::SLE:
        std::swap(lhs, rhs);
        // fallthrough
      case ICmpInst::SGE: {
        auto middle = builder.newVReg(dest->getType());
        auto slt = LIRInst::create(SLT, middle, lhs, rhs);
        auto newInst = LIRInst::create(XORI, dest, middle, LIRImm::create(1));
        builder.addInst(slt);
        builder.addInst(newInst);
        return newInst;
      }

        // case ICmpInst::UGT:
        // std::swap(it->operand[1], it->operand[2]);
        //// fallthrough
        // case ICmpInst::ULT:
        //*it = LIRInst::create(SLTU, it->operand[0], it->operand[1],
        // it->operand[2]);
        // break;

      default:
        nnvm_unreachable("Unimplemented");
      }
      break;
    }

    case InstID::FCmp: {
      uint64_t predicate = I->getOp(3)->as<LIRImm>()->getValue();
      switch (predicate) {

      case FCmpInst::OEQ: {
        // a == b
        auto last =
            LIRInst::create(FEQ_S, I->getOp(0), I->getOp(1), I->getOp(2));
        builder.addInst(last);
        return last;
      }

      case FCmpInst::ONE: {
        // a != b
        auto middle = builder.newVReg(I->getOp(0)->getType());
        auto eq = LIRInst::create(FEQ_S, middle, I->getOp(1), I->getOp(2));
        builder.addInst(eq);
        auto newInst =
            LIRInst::create(XORI, I->getOp(0), middle, LIRImm::create(1));
        builder.addInst(newInst);
        return newInst;
      }

      case FCmpInst::OGT:
        // a > b  -->  b < a
        I->swap(1, 2);
      case FCmpInst::OLT: {
        // a < b
        auto last =
            LIRInst::create(FLT_S, I->getOp(0), I->getOp(1), I->getOp(2));
        builder.addInst(last);
        return last;
      }

      case FCmpInst::OGE:
        // a >= b  -->  b <= a
        I->swap(1, 2);
      case FCmpInst::OLE: {
        // a <= b
        auto last =
            LIRInst::create(FLE_S, I->getOp(0), I->getOp(1), I->getOp(2));
        builder.addInst(last);
        return last;
      }

      default:
        nnvm_unreachable("Unimplemented");
      }
      break;
    }

    case InstID::Stack:
      nnvm_unreachable("StackInst should not be in this stage");
    default:
      nnvm_unimpl();
    }
  }
  return nullptr;
}

LIRInst *ISel::expand(LIRBuilder &builder, LIRInst *I) {
  switch (I->getOpcode()) {
  case DIVW:
    return expandSDiv(builder, I);
  case REMW:
    return expandSRem(builder, I);
  default:
    return nullptr;
  }
  return nullptr;
}

LIRInst *ISel::expandSDiv(LIRBuilder &builder, LIRInst *I) {
  LIRValueType type = I->getOp(2)->getType();

  if (!I->getOp(2)->isConstant() || type != LIRValueType::i32)
    return nullptr;

  LIRValue *res = I->getOp(0);
  LIRValue *divided = I->getOp(1);
  LIRConst *divisor = I->getOp(2)->as<LIRConst>();
  GInt power;

  if (!genericGetPowerOfTwo(divisor->getIValue(), 32, power))
    return nullptr;

  auto *lessThanZero = builder.newVReg(type);
  auto *select = builder.newVReg(type);
  auto *added = builder.newVReg(type);

  auto *slt = LIRInst::create(SRAIW, lessThanZero, divided, LIRImm::create(31));
  auto *comp =
      LIRInst::create(SRLIW, select, lessThanZero, LIRImm::create(32 - power));
  auto *add = LIRInst::create(ADD, added, divided, select);
  auto *div = LIRInst::create(SRAIW, res, added, LIRImm::create(power));

  builder.addInst(slt);
  builder.addInst(comp);
  builder.addInst(add);
  builder.addInst(div);

  return div;
}

LIRInst *ISel::expandSRem(LIRBuilder &builder, LIRInst *I) {
  LIRValueType type = I->getOp(2)->getType();

  if (!I->getOp(2)->isConstant() || type != LIRValueType::i32)
    return nullptr;

  LIRValue *res = I->getOp(0);
  LIRValue *divided = I->getOp(1);
  LIRConst *divisor = I->getOp(2)->as<LIRConst>();
  GInt power;

  if (!genericGetPowerOfTwo(divisor->getIValue(), 32, power))
    return nullptr;

  // a / (1 << bits)  -->  a - ( a + ((a << 1) >> (bitwidth - bits)) & -(1 <<
  // bits))
  auto *withoutSign = builder.newVReg(type);
  auto *select = builder.newVReg(type);
  auto *masked = builder.newVReg(type);
  auto *added = builder.newVReg(type);

  auto *removeSign =
      LIRInst::create(SLLI, withoutSign, divided, LIRImm::create(1));
  auto *comp =
      LIRInst::create(SRLI, select, withoutSign, LIRImm::create(64 - power));
  auto *add = LIRInst::create(ADD, added, divided, select);
  auto *mask = LIRInst::create(
      AND, masked, added, LIRConst::createInt(-divisor->getIValue(), type));
  auto *sub = LIRInst::create(SUBW, res, divided, masked);

  builder.addInst(removeSign);
  builder.addInst(comp);
  builder.addInst(add);
  builder.addInst(mask);
  builder.addInst(sub);

  return sub;
}

LIRInst *ISel::legalizeOperands(LIRBuilder &builder, LIRInst *I) {
  if (I->type > R_BEGIN && I->type < R_END) {
    LIRValue *rs1 = I->getOp(1);
    LIRValue *rs2 = I->getOp(2);

    if (rs1->isConstant()) {
      if (isCommutative(I->type)) {
        I->swap(1, 2);
        std::swap(rs1, rs2);
      }

      // TODO: WTF? How to handle constant fold in backend??
      if (rs1->isConstant()) {
        auto *vregForImm = builder.newVReg(rs1->getType());
        builder.loadConstantToReg(rs1->as<LIRConst>(), vregForImm, true);
        I->setUse(1, vregForImm);
      }
    }

    if (rs2->isConstant()) {
      uint64_t constImm = rs2->as<LIRConst>()->getIValue();
      if (constImm == 0) {
        rs2->replaceWith(builder.phyReg(ZERO));
      } else if (canExpressInBits<12>(constImm) && toIFormat(I->type) != NONE) {
        uint64_t iType = toIFormat(I->type);
        I->type = iType;
        I->setUse(2, LIRImm::create(constImm));
      } else {
        auto vregForImm = builder.newVReg(rs2->getType());
        builder.loadConstantToReg(rs2->as<LIRConst>(), vregForImm, true);
        I->setUse(2, vregForImm);
      }
    }
  } else if (I->type > S_BEGIN && I->type < S_END) {
    LIRValue *rs2 = I->getOp(0);
    LIRValue *rs1 = I->getOp(1);

    if (rs1->isGlobalVar()) {
      auto vregForAddress = builder.newVRegForPtr();
      loadGlobalToReg(builder, rs1->as<LIRGlobalVar>(), vregForAddress);
      I->setUse(1, vregForAddress);
    }

    if (rs2->isConstant()) {
      auto vregForImm = builder.newVReg(rs2->getType());
      builder.loadConstantToReg(rs2->as<LIRConst>(), vregForImm, true);
      I->setUse(0, vregForImm);
    }
  }

  for (size_t i = 0; i < I->getNumOp(); i++) {
    LIRValue *rs = I->getOp(i);
    EmitInfo info;

    if (rs->isGlobalVar()) {
      auto vregForAddress = builder.newVRegForPtr();
      loadGlobalToReg(builder, rs->as<LIRGlobalVar>(), vregForAddress);
      I->setUse(i, vregForAddress);
    } else if (rs->isConstant()) {
      auto vregForConstant = builder.newVReg(rs->getType());
      builder.loadConstantToReg(rs->as<LIRConst>(), vregForConstant, true);
      I->setUse(i, vregForConstant);
    }
  }

  return nullptr;
}
