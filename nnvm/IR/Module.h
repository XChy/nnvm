#pragma once

#include "Function.h"
#include <string>
#include <unordered_map>

namespace nnvm {
class Module {

  Function *getFunction(const std::string name);
  void addFunction(Function *func);

  ~Module();

private:
  std::unordered_map<std::string, Function *> functionMap;
};
} // namespace nnvm
