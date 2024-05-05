#pragma once

#include <cassert>
#include <cstdint>
#include <string>
namespace nnvm {

class Type {
public:
  enum TypeClass { Void, Integer, Float, Pointer, Array, Vector, Function };

  Type(TypeClass typeID) : typeClass(typeID), subData(0) {}

  Type(TypeClass typeID, uint32_t subData)
      : typeClass(typeID), subData(subData) {}

  bool isIdenticalTo(Type *other) {
    if (this == other)
      return true;

    return false;
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

private:
  Type *containedTy;
  TypeClass typeClass : 32;
  uint32_t subData;
};
} // namespace nnvm
