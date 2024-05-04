#pragma once

#include <cstdint>
#include <string>
namespace nnvm {

class Type {
public:
  enum TypeClass { Void, Integer, Float, Pointer, Array, Vector };

  Type(TypeClass typeID) : typeClass(typeID), subData(0) {}

  Type(TypeClass typeID, uint32_t subData)
      : typeClass(typeID), subData(subData) {}

  bool isIdenticalTo(Type *other) {
    if (this == other)
      return true;

    return false;
  }

  std::string dump();

private:
  Type *containedTy;
  TypeClass typeClass : 32;
  uint32_t subData;
};
} // namespace nnvm
