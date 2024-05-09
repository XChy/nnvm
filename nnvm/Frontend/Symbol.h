#pragma once

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
      for (int i = 0; i < argTys.size(); i++)
        if (!argTys[i]->isIdentical(*other.argTys[i]))
          return false;
      return true;
    }
    return false;
  }

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

  bool operator!() { return !entity; }

  static Symbol getInt(Value *entity) {
    return Symbol(entity, SymbolType::getIntTy());
  }

  static Symbol getFloat(Value *entity) {
    return Symbol(entity, SymbolType::getFloatTy());
  }

  static Symbol none();
};
} /* namespace nnvm */
