#pragma once

#include "Function.h"
#include "IR/Constant.h"
#include "IR/GlobalVariable.h"
#include "IR/UBValue.h"
#include "Platform/Platform.h"
#include <memory>
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
  void removeFunction(const std::string &name);
  std::unordered_map<std::string, Function *> getFunctionMap() const {
    return functionMap;
  }

  GlobalVariable *getGlobalVar(const std::string &name);
  void addGlobalVar(GlobalVariable *global);
  void removeGlobalVar(const std::string &name);
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
  Type *getBBType();
  Type *getArrayType(Type *elementTy, uint numElement);

  typedef unordered_map<uint32_t, Type *> IntegerTypeMap;
  typedef unordered_map<Type::TypeClass, vector<Type *>> NormalTypeMap;
  typedef std::unordered_multimap<uint64_t, Constant *> ConstantPool;

  Constant *addConstant(const Constant &constant);
  ConstantPool getConstantPool() { return constantPool; };

  std::string allocValueName(const std::string &name);
  bool isConflictName(const std::string &name) { return names.count(name); }

  Platform *getPlatform() const { return platform.get(); }

private:
  std::unordered_map<std::string, Function *> functionMap;
  std::unordered_map<std::string, GlobalVariable *> globalVarMap;
  ConstantPool constantPool;
  // std::unordered_map<Type *, UBValue *> UBValuePool;
  std::unordered_set<std::string> names;

  NormalTypeMap typeMap;
  IntegerTypeMap intTypeMap;
  vector<Type *> otherTypes;

  // Platform-specific information
  std::unique_ptr<Platform> platform;
};
} // namespace nnvm
