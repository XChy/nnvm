#include "Constant.h"
#include "Module.h"

using namespace nnvm;

Constant *ConstantInt::create(Module &module, Type *type, GInt value) {
  return module.addConstant(ConstantInt(type, value));
}

ConstantInt::ConstantInt(Type *type, GInt value)
    : Constant(type), value(value) {}

Constant *ConstantFloat::create(Module &module, float value) {
  return module.addConstant(ConstantInt(module.getFloatType(), value));
}

ConstantFloat::ConstantFloat(Type *ty, float value)
    : Constant(ty), value(value) {}

ConstantArray *ConstantArray::create(Module &module) {
  nnvm_unreachable("Not implemented")
}
