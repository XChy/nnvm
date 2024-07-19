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

  void setNumElements(uint num) { subData = num; }
  uint getNumElements() { return subData; }

  void setContainedTy(Type *containedTy) { this->containedTy = containedTy; }
  Type *getContainedTy() { return containedTy; }

  bool isIdenticalTo(Type *other) {
    if (this == other)
      return true;

    return this == other;
  }

  uint getBytes();

  uint getBits();

  // At memory level, the data of any bitwidth must be aligned as specific
  // datalayout setting. For convenience, we assume we are under RISCV-64 ISA.
  uint getStoredBytes();

  std::string dump();

  bool isInteger() { return typeClass == Integer; }
  bool isIntegerNBits(uint64_t bits) {
    return typeClass == Integer && getBits() == bits;
  }
  bool isArray() { return typeClass == Array; }
  bool isPointer() { return typeClass == Pointer; }

  bool isIntegerOrPtr() { return isInteger() || isPointer(); }
  bool isFloat() { return typeClass == Float; }
  bool isVoid() { return typeClass == Void; }

private:
  Type *containedTy;
  TypeClass typeClass : 32;
  uint32_t subData;
};
} // namespace nnvm
