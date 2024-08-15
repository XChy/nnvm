#include "Constant.h"
#include "ADT/GenericInt.h"
#include "Module.h"

using namespace nnvm;

ConstantInt *ConstantInt::create(Module &module, Type *type, GInt value) {
  return cast<ConstantInt>(module.addConstant(ConstantInt(type, value)));
}

ConstantInt::ConstantInt(Type *type, GInt value)
    : Constant(type), value(sextOf(value, type->getBits())) {
  // Zero-extended i1
  if (type->isIntegerNBits(1))
    this->value &= 1;
}

ConstantInt *ConstantInt::add(ConstantInt *rhs) const {
  ConstantInt *ret =
      create(*getModule(), getType(),
             genericAdd(getValue(), rhs->getValue(), getType()->getBits()));
  return ret;
}
ConstantInt *ConstantInt::sub(ConstantInt *rhs) const {
  ConstantInt *ret =
      create(*getModule(), getType(),
             genericSub(getValue(), rhs->getValue(), getType()->getBits()));
  return ret;
}

ConstantInt *ConstantInt::mul(ConstantInt *rhs) const {
  ConstantInt *ret =
      create(*getModule(), getType(),
             genericMul(getValue(), rhs->getValue(), getType()->getBits()));
  return ret;
}

ConstantInt *ConstantInt::sdiv(ConstantInt *rhs) const {
  ConstantInt *ret =
      create(*getModule(), getType(),
             genericSDiv(getValue(), rhs->getValue(), getType()->getBits()));
  return ret;
}

ConstantInt *ConstantInt::shl(ConstantInt *shlNum) const {
  ConstantInt *ret =
      create(*getModule(), getType(),
             genericShl(getValue(), shlNum->getValue(), getType()->getBits()));
  return ret;
}

Constant *ConstantFloat::create(Module &module, float value) {
  return module.addConstant(ConstantFloat(module.getFloatType(), value));
}

ConstantFloat::ConstantFloat(Type *ty, float value)
    : Constant(ty), value(value) {}

ConstantArray::ConstantArray(Type *ty, const std::vector<Constant *> &value)
    : Constant(ty), value(value) {}

Constant *ConstantArray::create(Module &module, Type *ty,
                                const std::vector<Constant *> &value) {

  return module.addConstant(ConstantArray(ty, value));
}

Constant *ConstantAllZeros::create(Module &module, Type *ty) {
  return module.addConstant(ConstantAllZeros(ty));
}
