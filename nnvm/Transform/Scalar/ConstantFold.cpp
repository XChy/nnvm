#include "ConstantFold.h"
#include "ADT/GenericInt.h"
#include "IR/Attributes.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <cmath>

using namespace nnvm;

Value *ConstantFold::fold(Instruction *I) {

  if (I->isBinOp()) {
    Constant *lhs = mayCast<Constant>(I->getOperand(0));
    Constant *rhs = mayCast<Constant>(I->getOperand(1));
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
    case InstID::And:
      return foldAnd(cast<AndInst>(I));
    case InstID::Or:
      return foldOr(cast<OrInst>(I));
    case InstID::Xor:
      return foldXor(cast<XorInst>(I));
    case InstID::URem:
      return nullptr;
    case InstID::SRem:
      return foldSRem(cast<SRemInst>(I));
    case InstID::Shl:
      return foldShl(cast<ShlInst>(I));
    case InstID::FAdd:
      return foldFAdd(cast<FAddInst>(I));
    case InstID::FSub:
      return foldFSub(cast<FSubInst>(I));
    case InstID::FMul:
      return foldFMul(cast<FMulInst>(I));
    case InstID::FDiv:
      return foldFDiv(cast<FDivInst>(I));
    case InstID::FRem:
      return foldFRem(cast<FRemInst>(I));
    default:
      return nullptr;
    }
  }

  if (ICmpInst *CI = mayCast<ICmpInst>(I))
    if (mayCast<Constant>(CI->getOperand(0)) &&
        mayCast<Constant>(CI->getOperand(1)))
      return foldICmp(CI);

  if (LoadInst *LI = mayCast<LoadInst>(I))
    return foldLoad(LI);

  if (ZExtInst *ZI = mayCast<ZExtInst>(I))
    return foldZExt(ZI);

  // TODO: Handle other operator on constant operands, such as "a[0]", where "a"
  // is a constant array.

  return nullptr;
}

Value *ConstantFold::foldAdd(AddInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());
  return lhs->add(rhs);
}

Value *ConstantFold::foldSub(SubInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());
  return lhs->sub(rhs);
}

Value *ConstantFold::foldMul(MulInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());
  return lhs->mul(rhs);
}

Value *ConstantFold::foldSDiv(SDivInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());
  return lhs->sdiv(rhs);
}

Value *ConstantFold::foldSRem(SRemInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());
  return lhs->srem(rhs);
}

Value *ConstantFold::foldAnd(AndInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericAnd(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
  return ConstantInt::create(*module, lhs->getType(), result);
}

Value *ConstantFold::foldOr(OrInst *I) {
  ConstantInt *lhs = cast<ConstantInt>(I->getLHS());
  ConstantInt *rhs = cast<ConstantInt>(I->getRHS());

  GInt result =
      genericOr(lhs->getValue(), rhs->getValue(), lhs->getType()->getBits());
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

static inline Value *foldLoadFromConstPtr(Type *loadedType, GlobalVariable *GV,
                                          GInt offset) {
  if (!GV->isAttached(Attribute::Immutable))
    return nullptr;

  auto loadedBytes = loadedType->getStoredBytes();
  Constant *initVal = GV->getInitVal();

  if (initVal->getType()->isArray()) {

    if (initVal->getType()->getContainedTy() != loadedType)
      return nullptr;

    if (offset % loadedBytes != 0)
      return nullptr;

    if (auto *CA = mayCast<ConstantArray>(initVal))
      return CA->getValue()[offset / loadedBytes];

    if (auto *ZERO = mayCast<ConstantAllZeros>(initVal)) {
      if (loadedType->isInteger())
        return ConstantInt::create(GV->getModule(), loadedType, 0);
      if (loadedType->isFloat())
        return ConstantFloat::create(GV->getModule(), 0);
    }

  } else {
    if (initVal->getType() != loadedType || offset != 0)
      return nullptr;
    return GV->getInitVal();
  }

  return nullptr;
}

Value *ConstantFold::foldLoad(LoadInst *I) {
  Type *loadedType = I->getType();

  if (GlobalVariable *GV = mayCast<GlobalVariable>(I->getSrc()))
    return foldLoadFromConstPtr(loadedType, GV, 0);

  // fold arr[offset] .iff arr is immutable and the offset is constant.
  if (auto *ptradd = mayCast<PtrAddInst>(I->getSrc())) {
    GlobalVariable *GV = mayCast<GlobalVariable>(ptradd->getLHS());
    ConstantInt *offset = mayCast<ConstantInt>(ptradd->getRHS());

    if (!GV || !offset)
      return nullptr;
    return foldLoadFromConstPtr(loadedType, GV, offset->getValue());
  }

  return nullptr;
}

Value *ConstantFold::foldFAdd(FAddInst *I) {
  ConstantFloat *lhs = cast<ConstantFloat>(I->getLHS());
  ConstantFloat *rhs = cast<ConstantFloat>(I->getRHS());
  float result = lhs->getValue() + rhs->getValue();
  return ConstantFloat::create(*module, result);
}

Value *ConstantFold::foldFSub(FSubInst *I) {
  ConstantFloat *lhs = cast<ConstantFloat>(I->getLHS());
  ConstantFloat *rhs = cast<ConstantFloat>(I->getRHS());
  float result = lhs->getValue() - rhs->getValue();
  return ConstantFloat::create(*module, result);
}

Value *ConstantFold::foldFMul(FMulInst *I) {
  ConstantFloat *lhs = cast<ConstantFloat>(I->getLHS());
  ConstantFloat *rhs = cast<ConstantFloat>(I->getRHS());
  float result = lhs->getValue() * rhs->getValue();
  return ConstantFloat::create(*module, result);
}

Value *ConstantFold::foldFDiv(FDivInst *I) {
  ConstantFloat *lhs = cast<ConstantFloat>(I->getLHS());
  ConstantFloat *rhs = cast<ConstantFloat>(I->getRHS());
  // refine a / 0 -> 0
  if (rhs->getValue() == 0.0f)
    return ConstantFloat::create(*module, 0.0f);
  float result = lhs->getValue() / rhs->getValue();
  return ConstantFloat::create(*module, result);
}

Value *ConstantFold::foldFRem(FRemInst *I) {
  ConstantFloat *lhs = cast<ConstantFloat>(I->getLHS());
  ConstantFloat *rhs = cast<ConstantFloat>(I->getRHS());
  // refine a % 0 -> 0
  if (rhs->getValue() == 0.0f)
    return ConstantFloat::create(*module, 0.0f);
  float result = std::fmod(lhs->getValue(), rhs->getValue());
  return ConstantFloat::create(*module, result);
}

Value *ConstantFold::foldZExt(ZExtInst *I) {
  ConstantInt *op = mayCast<ConstantInt>(I->getOperand(0));
  if (!op)
    return nullptr;

  return op->zextTo(I->getType());
}
