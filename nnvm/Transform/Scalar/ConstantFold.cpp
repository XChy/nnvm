#include "ConstantFold.h"
#include "IR/Constant.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"

using namespace nnvm;

Value *ConstantFold::fold(Instruction *I) {

  if (I->isBinOp()) {
    Constant *lhs = dyn_cast<Constant>(I->getOperand(0));
    Constant *rhs = dyn_cast<Constant>(I->getOperand(1));
    if (!lhs || !rhs)
      return nullptr;

    switch (I->getOpcode()) {
    case InstID::Add:
      return foldAdd(cast<AddInst>(I));
    case InstID::Sub:
      return foldSub(cast<SubInst>(I));
    case InstID::Mul:
      return foldMul(cast<MulInst>(I));
    case InstID::UDiv:
    case InstID::SDiv:
    case InstID::URem:
    case InstID::SRem:
    case InstID::FAdd:
    case InstID::FSub:
    case InstID::FMul:
    case InstID::FDiv:
    case InstID::FRem:
    default:
      return nullptr;
    }
  }

  // TODO: Handle other operator on constant operands, such as "a[0]", where "a"
  // is a constant array.

  return nullptr;
}

Value *ConstantFold::foldAdd(AddInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  if (lhs->getType()->isIntegerNBits(32)) {
    GInt retInt = ((uint32_t)lhs->getValue()) + ((uint32_t)rhs->getValue());
    if (retInt & 0x80000000)
      retInt = retInt | 0xFFFFFFFF00000000;
    return ConstantInt::create(*module, lhs->getType(), retInt);
  }

  return nullptr;
}

Value *ConstantFold::foldSub(SubInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  if (lhs->getType()->isIntegerNBits(32)) {
    GInt retInt = ((uint32_t)lhs->getValue()) - ((uint32_t)rhs->getValue());
    if (retInt & 0x80000000)
      retInt = retInt | 0xFFFFFFFF00000000;
    return ConstantInt::create(*module, lhs->getType(), retInt);
  }

  return nullptr;
}

Value *ConstantFold::foldMul(MulInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  if (lhs->getType()->isIntegerNBits(32)) {
    GInt retInt = ((uint32_t)lhs->getValue()) * ((uint32_t)rhs->getValue());
    if (retInt & 0x80000000)
      retInt = retInt | 0xFFFFFFFF00000000;
    return ConstantInt::create(*module, lhs->getType(), retInt);
  }

  return nullptr;
}
