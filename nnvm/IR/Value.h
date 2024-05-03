#pragma once

#include <string>
#include <vector>
namespace nnvm {

enum class ValueType { Instruction, Constant, Argument, GlobalVariable };

class Use;

class Value {
public:
  std::vector<Use *> users() const;

  virtual std::string dump() const { return ""; };
  virtual ~Value() {}

protected:
  ValueType valueType;
  std::vector<Use *> userList;
}; // namespace nnvm

// Every user manages the memory of uses;
struct Use {
  Value *user;
  Value *usee;
};

} // namespace nnvm
