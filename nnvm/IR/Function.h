#pragma once

#include "ADT/List.h"
#include "IR/Argument.h"
#include "IR/Attributes.h"
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

  using Iterator = List<BasicBlock>::Iterator;

  void insert(BasicBlock *BB);
  void insertBack(BasicBlock *BB, Iterator pos);

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

  List<BasicBlock> &getBBList() { return BBList; }
  const List<BasicBlock> &getBBList() const { return BBList; }

  std::string dumpAsOperand();
  std::string dump();

  bool isAttached(Attribute attr) { return attributes.count(attr); }
  void attach(Attribute attr) { attributes.insert(attr); }
  void removeAttr(Attribute attr) { attributes.erase(attr); }

private:
  List<BasicBlock> BBList;
  Module *module;
  std::vector<Argument *> arguments;
  AttributeSet attributes;

  Type *retType;
  // Whether the arguments are variadic.
  bool variadic = false;
  // Whether this function is linked outside the compile unit.
  bool external = false;
};
} // namespace nnvm
