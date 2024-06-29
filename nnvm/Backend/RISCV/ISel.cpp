#include "ISel.h"
#include "ADT/GenericInt.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
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

  debug({
    std::cerr << "====After combining====:\n";
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

void riscv::loadConstantToReg(LIRBuilder &builder, LIRConst *constant,
                              Register *reg) {
  if (canExpressInBits<12>(constant->getIValue())) {
    auto load = LIRInst::create(ADDI, reg, builder.phyReg(ZERO),
                                LIRImm::create(constant->getIValue()));
    builder.addInst(load);
    return;
  }

  if (canExpressInBits<32>(constant->getIValue())) {
    uint64_t largeValue;
    uint64_t smallValue;
    if (constant->getIValue() & 0x800) {
      smallValue = (constant->getIValue() & 0xFFF) - (1 << 12);
      largeValue = ((constant->getIValue() >> 12) + 1) & 0xFFFFF;
    } else {
      smallValue = constant->getIValue() & 0xFFF;
      largeValue = (constant->getIValue() >> 12) & 0xFFFFF;
    }

    auto auipc = LIRInst::create(LUI, reg, LIRImm::create(largeValue));
    auto load = LIRInst::create(ADDI, reg, reg, LIRImm::create(smallValue));
    builder.addInst(auipc);
    builder.addInst(load);
    return;
  }

  nnvm_unreachable("How to handle big constant, especially for i64?")
}

void riscv::loadRegPlusConstantToReg(LIRBuilder &builder, Register *srcReg,
                                     LIRConst *constant, Register *destReg) {
  if (canExpressInBits<12>(constant->getIValue())) {
    auto load = LIRInst::create(ADDI, destReg, srcReg,
                                LIRImm::create(constant->getIValue()));
    builder.addInst(load);
    return;
  }

  loadConstantToReg(builder, constant, destReg);
  auto addDestAndSrc = LIRInst::create(ADD, destReg, destReg, srcReg);
  builder.addInst(addDestAndSrc);
}

void riscv::loadRegPlusConstantToReg(LIRBuilder &builder, Register *srcReg,
                                     LIRConst *constant, Register *destReg,
                                     Register *scratchReg) {
  if (canExpressInBits<12>(constant->getIValue())) {
    auto load = LIRInst::create(ADDI, destReg, srcReg,
                                LIRImm::create(constant->getIValue()));
    builder.addInst(load);
    return;
  }

  loadConstantToReg(builder, constant, scratchReg);
  auto addDestAndSrc = LIRInst::create(ADD, destReg, srcReg, scratchReg);
  builder.addInst(addDestAndSrc);
}

void riscv::loadGlobalToReg(LIRBuilder &builder, LIRGlobalVar *global,
                            Register *reg) {
  // TODO: replace the pseudocode "LA" with "%pcrel_hi & %pcrel_lo"
  // auto auipc = LowInst::create(AUIPC, reg, global);
  // auto addi = LowInst::create(ADDI, reg, reg, global);

  // bb.insertBefore(it, auipc);
  // bb.insertBefore(it, addi);
  builder.addInst(LIRInst::create(LA, reg, global));
}

static inline LIRInstID
materializeArithmeticInstType(uint64_t instID, LIRValueType operandType) {
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
    case InstID::SRem:
    case InstID::URem:
    case InstID::FAdd:
    case InstID::FSub:
    case InstID::FMul:
    case InstID::FDiv:
      // TODO: the type of operator is not that accurate, we should lower them
      // before doing such thing.
      {
        debug({
          EmitInfo info;
          I->emit(std::cerr, info);
          std::cerr << "\n";
        });

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
      auto *newInst = LIRInst::create(convertOpcode, I->getOp(0), I->getOp(1));
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
      switch (predicate) {

      case ICmpInst::EQ: {
        // a == b  -->   (a ^ b) == 0 --> (a ^ b) u< 1
        auto middle = builder.newVReg(I->getOp(0)->getType());
        builder.addInst(LIRInst::create(XOR, middle, I->getOp(1), I->getOp(2)));
        auto last =
            LIRInst::create(SLTIU, I->getOp(0), middle, LIRImm::create(1));
        builder.addInst(last);
        return last;
      }

        // a != b  -->  (a ^ b) == 0  -->  (a ^ b) u> 0  -->  0 u< (a ^ b)
      case ICmpInst::NE: {
        auto middle = builder.newVReg(I->getOp(0)->getType());
        builder.addInst(LIRInst::create(XOR, middle, I->getOp(1), I->getOp(2)));
        auto last =
            LIRInst::create(SLTU, I->getOp(0), builder.phyReg(ZERO), middle);
        builder.addInst(last);
        return last;
      }

        // a > b  -->  b < a
      case ICmpInst::SGT:
        I->swap(1, 2);
        // fallthrough
      case ICmpInst::SLT: {
        auto newInst =
            LIRInst::create(SLT, I->getOp(0), I->getOp(1), I->getOp(2));
        builder.addInst(newInst);
        return newInst;
      }

        // a <= b  -->  not(a > b) --> not(b < a)
        // a >= b  -->  not(a < b)
      case ICmpInst::SLE:
        I->swap(1, 2);
        // fallthrough
      case ICmpInst::SGE: {
        auto middle = builder.newVReg(I->getOp(0)->getType());
        auto slt = LIRInst::create(SLT, middle, I->getOp(1), I->getOp(2));
        builder.addInst(slt);
        auto newInst =
            LIRInst::create(XORI, I->getOp(0), middle, LIRImm::create(1));
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
        loadConstantToReg(builder, rs1->as<LIRConst>(), vregForImm);
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
        loadConstantToReg(builder, rs2->as<LIRConst>(), vregForImm);
        I->setUse(2, vregForImm);
      }
    }
  } else if (I->type > S_BEGIN && I->type < S_END) {
    LIRValue *rs2 = I->getOp(0);
    LIRValue *rs1 = I->getOp(1);

    if (rs1->isGlobalVar()) {
      auto vregForAddress = builder.newVReg(LIRValueType::i64);
      loadGlobalToReg(builder, rs1->as<LIRGlobalVar>(), vregForAddress);
      I->setUse(1, vregForAddress);
    }

    if (rs2->isConstant()) {
      auto vregForImm = builder.newVReg(rs2->getType());
      loadConstantToReg(builder, rs2->as<LIRConst>(), vregForImm);
      I->setUse(0, vregForImm);
    }
  }

  for (size_t i = 0; i < I->getNumOp(); i++) {
    LIRValue *rs = I->getOp(i);
    EmitInfo info;

    if (rs->isGlobalVar()) {
      auto vregForAddress = builder.newVReg(LIRValueType::i64);
      loadGlobalToReg(builder, rs->as<LIRGlobalVar>(), vregForAddress);
      I->setUse(i, vregForAddress);
    } else if (I->getOp(i)->isConstant()) {

      auto vregForImm = builder.newVReg(rs->getType());
      loadConstantToReg(builder, rs->as<LIRConst>(), vregForImm);
      I->setUse(i, vregForImm);
    }
  }

  return nullptr;
}
