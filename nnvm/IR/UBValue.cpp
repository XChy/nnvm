#include "UBValue.h"
#include "IR/Constant.h"
#include "Utils/Debug.h"
#include <memory>

using namespace nnvm;

std::unordered_map<Type *, std::unique_ptr<UBValue>> pool;

UBValue *UBValue::create(Type *type) {
  if (!pool.count(type))
    pool[type] = std::unique_ptr<UBValue>(new UBValue(type));
  return pool[type].get();
}

std::vector<UBValue *> UBValue::allUBValues() {
  std::vector<UBValue *> ret;
  for (auto &[type, value] : pool)
    ret.push_back(value.get());
  return ret;
}

Value *UBValue::refineDefault(Module &M) {
  if (getType()->isInteger())
    return ConstantInt::create(M, getType(), 0);
  if (getType()->isFloat())
    return ConstantFloat::create(M, 0);
  nnvm_unreachable("Illegal UB value");
}
