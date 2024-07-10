#include "ConstantFold.h"
#include "ADT/GenericInt.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
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
      return nullptr;
    case InstID::SDiv:
      return foldSDiv(cast<SDivInst>(I));
    case InstID::Xor:
      return foldXor(cast<XorInst>(I));
    case InstID::URem:
      return nullptr;
    case InstID::SRem:
      return foldSRem(cast<SRemInst>(I));
    case InstID::Shl:
      return foldShl(cast<ShlInst>(I));
    case InstID::FAdd:
    case InstID::FSub:
    case InstID::FMul:
    case InstID::FDiv:
    case InstID::FRem:
    default:
      return nullptr;
    }
  }

  if (ICmpInst *CI = dyn_cast<ICmpInst>(I))
    if (dyn_cast<Constant>(CI->getOperand(0)) &&
        dyn_cast<Constant>(CI->getOperand(1)))
      return foldICmp(CI);

  if (LoadInst *LI = dyn_cast<LoadInst>(I))
    return foldLoad(LI);

  // TODO: Handle other operator on constant operands, such as "a[0]", where "a"
  // is a constant array.

  return nullptr;
}

Value *ConstantFold::foldAdd(AddInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericAdd(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldSub(SubInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericSub(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldMul(MulInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericMul(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldSDiv(SDivInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericSDiv(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldSRem(SRemInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericSRem(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldXor(XorInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericXor(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldShl(ShlInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericShl(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldICmp(ICmpInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getOperand(0));
  ConstantInt *rhs = cast<ConstantInt>(I->getOperand(1));

  bool ret;
  switch (I->getPredicate()) {
  case ICmpInst::EQ:
    ret =
        genericEQ(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
    return ConstantInt::create(*module, module->getBoolType(), ret);
  case ICmpInst::NE:
    ret =
        genericNE(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
    return ConstantInt::create(*module, module->getBoolType(), ret);
  case ICmpInst::SLT:
    ret =
        genericSLT(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
    return ConstantInt::create(*module, module->getBoolType(), ret);
  case ICmpInst::SGT:
    ret =
        genericSGT(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
    return ConstantInt::create(*module, module->getBoolType(), ret);

  default:
    return nullptr;
  }
}

Value *ConstantFold::foldLoad(LoadInst *I) {
  if (GlobalVariable *GV = dyn_cast<GlobalVariable>(I->getSrc())) {
    if (!GV->isImmutable())
      return nullptr;
    if (I->getType() == GV->getInitVal()->getType())
      return GV->getInitVal();
  }
  return nullptr;
}
