#pragma once

#include "ADT/List.h"
#include "IR/Argument.h"
#include "IR/BasicBlock.h"
#include "IR/Type.h"
#include "IR/Value.h"
#include <vector>

namespace nnvm {
class Function final : public Value {
public:
  Function(Module *module, const std::string &name, bool external = false);
  Function(Module *module, const std::string &name, Type *retType,
           const std::vector<Argument *> &args, bool external = false);
  ~Function();

  void insert(BasicBlock *BB);

  List<BasicBlock>::Iterator begin() { return BBList.begin(); }
  List<BasicBlock>::Iterator end() { return BBList.end(); };

  BasicBlock *getEntry() { return *BBList.begin(); }

  void setReturnType(Type *retType) { this->retType = retType; }
  Type *getReturnType() { return retType; }

  void setModule(Module *module) { this->module = module; }
  Module *getModule() { return module; }

  void addArgument(Argument *arg);
  std::vector<Argument *> getArguments();

  void setVariadic(bool variadic) { this->variadic = variadic; }
  bool isVariadic() { return variadic; }

  void setExternal(bool external) { this->external = external; }
  bool isExternal() { return external; }

  std::string dumpAsOperand();
  std::string dump();

  using Iterator = List<BasicBlock>::Iterator;

private:
  List<BasicBlock> BBList;
  Module *module;
  std::vector<Argument *> arguments;

  Type *retType;
  // Whether the arguments are variadic.
  bool variadic = false;
  // Whether this function is linked outside the compile unit.
  bool external = false;
};
} // namespace nnvm
