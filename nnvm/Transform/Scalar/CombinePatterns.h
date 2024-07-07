
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
  pBinOp(LSubPattern LHS, RSubPattern RHS) : pSpecificInst<instID>(), LHS(LHS), RHS(RHS) {}

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

} // namespace nnvm::pattern
