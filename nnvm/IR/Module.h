#pragma once

#include "Function.h"
#include "IR/Constant.h"
#include "IR/GlobalVariable.h"
#include <string>
#include <unordered_map>
#include <unordered_set>

namespace nnvm {

using std::unordered_map;
using std::vector;

class Module {
public:
  Module();

  Function *getFunction(const std::string &name);
  void addFunction(Function *func);
  std::unordered_map<std::string, Function *> getFunctionMap() const {
    return functionMap;
  }

  GlobalVariable *getGlobalVar(const std::string &name);
  void addGlobalVar(GlobalVariable *global);
  std::unordered_map<std::string, GlobalVariable *> getGlobalVarMap() const {
    return globalVarMap;
  }

  std::string dump() const;

  ~Module();

  Type *getVoidType();
  Type *getIntType();
  Type *getFloatType();
  Type *getBoolType();
  Type *getPtrType();

  typedef unordered_map<uint32_t, Type *> IntegerTypeMap;
  typedef unordered_map<Type::TypeClass, vector<Type *>> NormalTypeMap;
  typedef std::unordered_multimap<uint64_t, Constant *> ConstantPool;

  Constant *addConstant(const Constant &constant);
  ConstantPool getConstantPool();

private:
  std::unordered_map<std::string, Function *> functionMap;
  std::unordered_map<std::string, GlobalVariable *> globalVarMap;
  ConstantPool constantPool;

  NormalTypeMap typeMap;
  IntegerTypeMap intTypeMap;
  vector<Type *> otherTypes;
};
} // namespace nnvm
