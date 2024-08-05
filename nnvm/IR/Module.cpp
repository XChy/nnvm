#include "Module.h"
#include "IR/Type.h"
#include "Platform/BishengPlatform.h"
#include <algorithm>

using namespace nnvm;

static void initTypeMap(Module::NormalTypeMap &typeMap,
                        Module::IntegerTypeMap &intTypeMap) {
  typeMap = {
      {Type::Void, {new Type(Type::Void)}},
      {Type::Float, {new Type(Type::Float)}},
      {Type::Pointer, {new Type(Type::Pointer)}},
      {Type::BasicBlock, {new Type(Type::BasicBlock)}},
      {Type::Array, {}},
      {Type::Vector, {}},
  };

  intTypeMap = {
      {1, new Type(Type::Integer, 1)},   {8, new Type(Type::Integer, 8)},
      {16, new Type(Type::Integer, 16)}, {32, new Type(Type::Integer, 32)},
      {64, new Type(Type::Integer, 64)},
  };
}

Module::Module() : platform(new BishengPlaform) {
  initTypeMap(typeMap, intTypeMap);
}

Function *Module::getFunction(const std::string &name) {
  return functionMap[name];
}

void Module::addFunction(Function *func) {
  functionMap.insert({func->getName(), func});
}

void Module::removeFunction(const std::string &name) {
  functionMap.erase(name);
}

GlobalVariable *Module::getGlobalVar(const std::string &name) {
  return globalVarMap[name];
}

void Module::addGlobalVar(GlobalVariable *global) {
  globalVarMap.insert({global->getName(), global});
}

void Module::removeGlobalVar(const std::string &name) {
  globalVarMap.erase(name);
}

Type *Module::getVoidType() { return typeMap[Type::Void][0]; }
Type *Module::getIntType() { return intTypeMap[32]; }
Type *Module::getFloatType() { return typeMap[Type::Float][0]; }
Type *Module::getBoolType() { return intTypeMap[1]; }
Type *Module::getPtrType() { return typeMap[Type::Pointer][0]; }
Type *Module::getBBType() { return typeMap[Type::BasicBlock][0]; }
Type *Module::getArrayType(Type *elementTy, uint numElements) {
  auto &arrayTypes = typeMap[Type::Array];
  auto it =
      std::find_if(arrayTypes.begin(), arrayTypes.end(), [&](Type *arrayTy) {
        return arrayTy->getContainedTy() == elementTy &&
               arrayTy->getNumElements() == numElements;
      });
  if (it != arrayTypes.end()) {
    return *it;
  } else {
    Type *newType = new Type(Type::Array);
    newType->setNumElements(numElements);
    newType->setContainedTy(elementTy);
    arrayTypes.push_back(newType);
    return newType;
  }
}

Constant *Module::addConstant(const Constant &constant) {
  auto it = constantPool.find(constant.hash());
  for (; it != constantPool.end(); ++it) {
    if (it->second->eq(&constant))
      return it->second;
  }

  auto cloned = constant.clone();
  constantPool.insert({constant.hash(), cloned});
  return cloned;
}

std::string Module::allocValueName(const std::string &name) {
  std::string newName = name;
  if (newName.empty()) {
    newName = std::to_string(names.size());
  } else if (isConflictName(newName)) {
    newName += std::to_string(names.size());
  }
  while (isConflictName(newName)) {
    newName.push_back('C');
  }
  names.insert(newName);
  return newName;
}

Module::~Module() {
  for (auto [name, func] : functionMap)
    delete func;

  for (auto [name, global] : globalVarMap)
    delete global;

  for (auto [hashValue, constant] : constantPool)
    delete constant;

  for (auto &[_, subVec] : typeMap)
    for (auto *Ty : subVec)
      delete Ty;

  for (auto &[_, Ty] : intTypeMap)
    delete Ty;
}

std::string Module::dump() const {
  std::string ret;
  for (auto [name, global] : globalVarMap)
    ret += global->dump();

  for (auto [name, func] : functionMap)
    ret += func->dump();
  return ret;
}
