#pragma once

#include <cassert>
#include <cstdint>
#include <string>
namespace nnvm {

class Type {
public:
  enum TypeClass {
    Void,
    Integer,
    Float,
    Pointer,
    Array,
    Vector,
    Function,
    BasicBlock
  };

  Type(TypeClass typeID) : typeClass(typeID), subData(0) {}

  Type(TypeClass typeID, uint32_t subData)
      : typeClass(typeID), subData(subData) {}

  TypeClass getClass() const { return typeClass; }

  bool isIdenticalTo(Type *other) {
    if (this == other)
      return true;

    // TODO:??
    return this == other;
  }

  uint getBytes() {
    switch (typeClass) {
    case Void:
      return 0;
    case Integer:
      return (subData + 7) / 8;
    case Float:
      return 4;
    case Pointer:
      return 8;
    default:
      assert("No size support for this type");
      return 0;
    }
  }

  uint getScalarBits() {
    switch (typeClass) {
    case Void:
      return 0;
    case Integer:
      return subData;
    case Float:
      return 4;
    case Pointer:
      return 8;
    default:
      assert("No size support for this type");
      return 0;
    }
  }

  uint getStoredBytes() {
    switch (typeClass) {
    case Void:
      return 0;
    case Integer:
      return (subData + 7) / 8;
    case Float:
      return 4;
    case Pointer:
      return 8;
    default:
      assert("No size support for this type");
      return 0;
    }
  }

  std::string dump();

  bool isInteger() { return typeClass == Integer; }
  bool isFloat() { return typeClass == Float; }
  bool isVoid() { return typeClass == Void; }

private:
  Type *containedTy;
  TypeClass typeClass : 32;
  uint32_t subData;
};
} // namespace nnvm
