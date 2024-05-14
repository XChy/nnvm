#include "Type.h"
#include <cassert>
#include <string>

using namespace nnvm;

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
    return "basicblock";
  default:
    assert("Invalid type id!");
    return "";
  }
}
