#include "Type.h"
#include <cassert>
#include <string>

using namespace nnvm;

uint Type::getBytes() {
  switch (typeClass) {
  case Void:
    return 0;
  case Integer:
    return (subData + 7) / 8;
  case Float:
    return 4;
  case Pointer:
    return 8;
  case Array:
    return getNumElements() * containedTy->getBytes();
  default:
    assert("No size support for this type");
    return 0;
  }
}

uint Type::getScalarBits() {
  switch (typeClass) {
  case Void:
    return 0;
  case Integer:
    return subData;
  case Float:
    return 4;
  case Pointer:
    return 8;
  case Array:
    return containedTy->getScalarBits();
  default:
    assert("No size support for this type");
    return 0;
  }
}

uint Type::getStoredBytes() {
  switch (typeClass) {
  case Void:
    return 0;
  case Integer:
    return (subData + 7) / 8;
  case Float:
    return 4;
  case Pointer:
    return 8;
  case Array:
    return getNumElements() * containedTy->getStoredBytes();
  default:
    assert("No size support for this type");
    return 0;
  }
}

std::string Type::dump() {
  switch (typeClass) {
  case Void:
    return "void";
  case Float:
    return "float";
  case Pointer:
    return "ptr";
  case Integer:
    return "i" + std::to_string(subData);
  case BasicBlock:
    return "bb";
  case Array:
    return std::to_string(getNumElements()) + " x " + containedTy->dump();
  default:
    assert("Invalid type id!");
    return "";
  }
}
