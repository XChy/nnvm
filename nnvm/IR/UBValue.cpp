#include "UBValue.h"
#include <memory>

using namespace nnvm;

std::unordered_map<Type *, std::unique_ptr<UBValue>> pool;

UBValue *UBValue::create(Type *type) {
  if (!pool.count(type))
    pool[type] = std::unique_ptr<UBValue>(new UBValue(type));
  return pool[type].get();
}
