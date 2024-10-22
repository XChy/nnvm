// CombinePatterns: Some common patterns for NNVM-IR. Refer to pattern matching
// method in LLVM.

#include "ADT/PatternMatch.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include "Utils/Cast.h"

namespace nnvm::pattern {

class pValue {
public:
  pValue() : receiver(nullptr) {}
  pValue(Value *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    if (receiver)
      *receiver = op;
    return true;
  }

protected:
  Value **receiver;
};

class pMustBe {
public:
  pMustBe(Value *specific) : specific(specific) {}
  bool match(Value *op) { return op == specific; }

protected:
  Value *specific;
};

class pConstant {
public:
  pConstant() : receiver(nullptr) {}
  pConstant(Value *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    if (!op->isConstant())
      return false;
    if (receiver)
      *receiver = op;
    return true;
  }

protected:
  Value **receiver;
};

class pConstantInt {
public:
  pConstantInt() : receiver(nullptr) {}
  pConstantInt(ConstantInt *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    ConstantInt *opcasted = mayCast<ConstantInt>(op);
    if (!opcasted)
      return false;
    if (receiver)
      *receiver = opcasted;
    return true;
  }

protected:
  ConstantInt **receiver;
};

class pZero {
public:
  pZero() : receiver(nullptr) {}
  pZero(ConstantInt *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    ConstantInt *opcasted = mayCast<ConstantInt>(op);
    if (!opcasted)
      return false;
    if (opcasted->getValue() != 0)
      return false;
    if (receiver)
      *receiver = opcasted;
    return true;
  }

protected:
  ConstantInt **receiver;
};

class pOne {
public:
  pOne() : receiver(nullptr) {}
  pOne(ConstantInt *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    ConstantInt *opcasted = mayCast<ConstantInt>(op);
    if (!opcasted)
      return false;
    if (opcasted->getValue() != 1)
      return false;
    if (receiver)
      *receiver = opcasted;
    return true;
  }

protected:
  ConstantInt **receiver;
};

class pAllOne {
public:
  pAllOne() : receiver(nullptr) {}
  pAllOne(ConstantInt *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    ConstantInt *opcasted = mayCast<ConstantInt>(op);
    if (!opcasted)
      return false;
    if (!opcasted->isAllOne())
      return false;
    if (receiver)
      *receiver = opcasted;
    return true;
  }

protected:
  ConstantInt **receiver;
};

class pInst {
public:
  pInst() : receiver(nullptr) {}
  pInst(Instruction *&receiver) : receiver(&receiver) {}
  bool match(Value *op) {
    if (!op->isInstruction())
      return false;
    if (receiver)
      *receiver = cast<Instruction>(op);
    return true;
  }

protected:
  Instruction **receiver;
};

template <InstID instID> class pSpecificInst : public pInst {
public:
  pSpecificInst() : pInst() {}
  pSpecificInst(Instruction *&receiver) : pInst(receiver) {}

  bool match(Value *op) {
    if (!pInst::match(op))
      return false;

    if (cast<Instruction>(op)->getOpcode() != instID)
      return false;
    return true;
  }
};

template <InstID instID, typename LSubPattern, typename RSubPattern>
class pBinOp : public pSpecificInst<instID> {
public:
  pBinOp(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<instID>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<instID>::match(op))
      return false;

    Instruction *I = cast<Instruction>(op);
    if (!I->isBinOp())
      return false;
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename LSubPattern, typename RSubPattern>
class pAdd : public pBinOp<InstID::Add, LSubPattern, RSubPattern> {
public:
  pAdd(LSubPattern LHS, RSubPattern RHS)
      : pBinOp<InstID::Add, LSubPattern, RSubPattern>(LHS, RHS) {}
};

template <typename LSubPattern, typename RSubPattern>
class pSub : public pBinOp<InstID::Sub, LSubPattern, RSubPattern> {
public:
  pSub(LSubPattern LHS, RSubPattern RHS)
      : pBinOp<InstID::Sub, LSubPattern, RSubPattern>(LHS, RHS) {}
};

template <typename LSubPattern, typename RSubPattern>
class pMul : public pBinOp<InstID::Mul, LSubPattern, RSubPattern> {
public:
  pMul(LSubPattern LHS, RSubPattern RHS)
      : pBinOp<InstID::Mul, LSubPattern, RSubPattern>(LHS, RHS) {}
};

template <typename LSubPattern, typename RSubPattern>
class pSDiv : public pBinOp<InstID::SDiv, LSubPattern, RSubPattern> {
public:
  pSDiv(LSubPattern LHS, RSubPattern RHS)
      : pBinOp<InstID::SDiv, LSubPattern, RSubPattern>(LHS, RHS) {}
};

template <typename LSubPattern, typename RSubPattern>
class pPtrAdd : public pSpecificInst<InstID::PtrAdd> {
public:
  pPtrAdd(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::PtrAdd>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::PtrAdd>::match(op))
      return false;

    PtrAddInst *I = cast<PtrAddInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename LSubPattern, typename RSubPattern>
class pSRem : public pSpecificInst<InstID::SRem> {
public:
  pSRem(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::SRem>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::SRem>::match(op))
      return false;

    SRemInst *I = cast<SRemInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename LSubPattern, typename RSubPattern>
class pAnd : public pSpecificInst<InstID::And> {
public:
  pAnd(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::And>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::And>::match(op))
      return false;

    AndInst *I = cast<AndInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename LSubPattern, typename RSubPattern>
class pOr : public pSpecificInst<InstID::Or> {
public:
  pOr(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::Or>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::Or>::match(op))
      return false;

    OrInst *I = cast<OrInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename LSubPattern, typename RSubPattern>
class pXor : public pSpecificInst<InstID::Xor> {
public:
  pXor(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::Xor>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::Xor>::match(op))
      return false;

    XorInst *I = cast<XorInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename SubPattern>
class pZExt : public pSpecificInst<InstID::ZExt> {
public:
  pZExt(SubPattern sub) : pSpecificInst<InstID::ZExt>(), sub(sub) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::ZExt>::match(op))
      return false;

    ZExtInst *I = cast<ZExtInst>(op);
    if (!sub.match(I->getOperand(0)))
      return false;
    return true;
  }

protected:
  SubPattern sub;
};

template <typename LSubPattern, typename RSubPattern>
class pICmp : public pSpecificInst<InstID::ICmp> {
public:
  pICmp(LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::ICmp>(), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::ICmp>::match(op))
      return false;

    ICmpInst *I = cast<ICmpInst>(op);
    if (!LHS.match(I->getOperand(0)))
      return false;
    if (!RHS.match(I->getOperand(1)))
      return false;
    return true;
  }

protected:
  LSubPattern LHS;
  RSubPattern RHS;
};

template <typename CondPattern, typename LSubPattern, typename RSubPattern>
class pWhichOf : public pSpecificInst<InstID::WhichOf> {
public:
  pWhichOf(CondPattern cond, LSubPattern LHS, RSubPattern RHS)
      : pSpecificInst<InstID::WhichOf>(), cond(cond), LHS(LHS), RHS(RHS) {}

  bool match(Value *op) {
    if (!pSpecificInst<InstID::WhichOf>::match(op))
      return false;

    WhichOfInst *I = cast<WhichOfInst>(op);
    if (!cond.match(I->getCond()))
      return false;
    if (!LHS.match(I->getTrueVal()))
      return false;
    if (!RHS.match(I->getFalseVal()))
      return false;
    return true;
  }

protected:
  CondPattern cond;
  LSubPattern LHS;
  RSubPattern RHS;
};

} // namespace nnvm::pattern
