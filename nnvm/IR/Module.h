#pragma once

#include "Function.h"
#include <string>
#include <unordered_map>

namespace nnvm {

using std::unordered_map;
using std::vector;

class Module {
public:
  Module();
  Function *getFunction(const std::string &name);
  void addFunction(Function *func);

  std::string dump() const;

  ~Module();

  Type *getVoidType();
  Type *getIntType();
  Type *getFloatType();
  Type *getBoolType();
  Type *getPtrType();

  typedef unordered_map<uint32_t, Type *> IntegerTypeMap;
  typedef unordered_map<Type::TypeClass, vector<Type *>> NormalTypeMap;

private:
  std::unordered_map<std::string, Function *> functionMap;

  NormalTypeMap typeMap;
  IntegerTypeMap intTypeMap;
  vector<Type *> otherTypes;
};
} // namespace nnvm
