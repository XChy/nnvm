#pragma once

#include "IR/Module.h"
#include <algorithm>
#include <sys/types.h>
#include <vector>
namespace nnvm {
class Value;
class SymbolTable;

class SymbolType {
public:
  enum SymbolID {
    // Don't need to manage.
    Void,
    Int,
    Float,
    Bool,
    // Need to manage memory
    Array,
    Func
  };

  SymbolID symbolID;
  // NOTE: This field is only valid for array.
  uint numElements;
  // Array put the contained type at contained.
  // Func put the type of return value at contained
  SymbolType *containedTy;
  // NOTE: This field is only valid for function.
  std::vector<SymbolType *> argTys;

  uint getTotalNumOfElements() {
    uint ret = 1;
    SymbolType *current = this;
    while (current->isArray()) {
      ret *= current->numElements;
      current = current->containedTy;
    }
    return ret;
  }

  SymbolType *getInnerMost() {
    SymbolType *current = this;
    while (current->isArray())
      current = current->containedTy;
    return current;
  }

  bool isIdentical(const SymbolType &other) const {
    if (symbolID != other.symbolID)
      return false;
    switch (symbolID) {
    case Void:
    case Int:
    case Float:
    case Bool:
      return true;
    case Array:
      return numElements == other.numElements &&
             containedTy->isIdentical(*other.containedTy);
    case Func:
      if (!containedTy->isIdentical(*other.containedTy))
        return false;
      if (argTys.size() != other.argTys.size())
        return false;
      for (size_t i = 0; i < argTys.size(); i++)
        if (!argTys[i]->isIdentical(*other.argTys[i]))
          return false;
      return true;
    }
    return false;
  }

  bool isInt() { return symbolID == Int; }
  bool isBool() { return symbolID == Bool; }
  bool isFloat() { return symbolID == Float; }
  bool isVoid() { return symbolID == Void; }
  bool isArray() { return symbolID == Array; }

  static SymbolType *getIntTy();
  static SymbolType *getVoidTy();
  static SymbolType *getFloatTy();
  static SymbolType *getBoolTy();
  static SymbolType *getArrayTy(uint numElements, SymbolType *contained,
                                SymbolTable &table);
  static SymbolType *getFuncTy(SymbolType *returnTy,
                               const std::vector<SymbolType *> &argTys,
                               SymbolTable &table);
};

class Symbol {
public:
  Symbol() : entity(nullptr), symbolType(nullptr) {}
  Symbol(Value *entity, SymbolType *symbolType)
      : entity(entity), symbolType(symbolType) {}

  Value *entity;
  SymbolType *symbolType;
  std::vector<Value *> callers;

  bool operator!() { return !entity; }

  static Symbol getInt(Value *entity) {
    return Symbol(entity, SymbolType::getIntTy());
  }

  static Symbol getFloat(Value *entity) {
    return Symbol(entity, SymbolType::getFloatTy());
  }

  void addCaller(Value *caller) { this->callers.push_back(caller); }
  void setCallee(Value *callee) {
    for (Value *c : callers) {
      cast<CallInst>(c)->setCallee(callee);
    }
  }
  static Symbol none();
};

static inline Type *toIRType(Module &module, SymbolType *symbolType) {
  if (symbolType->isFloat())
    return module.getFloatType();
  if (symbolType->isInt())
    return module.getIntType();
  if (symbolType->isVoid())
    return module.getVoidType();
  if (symbolType->isBool())
    return module.getBoolType();
  if (symbolType->isArray())
    return module.getPtrType();
  nnvm_unreachable("Not implemented");
}

} /* namespace nnvm */
