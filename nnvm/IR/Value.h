#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include <string>
#include <vector>
namespace nnvm {

enum class ValueType { Instruction, Constant, Argument, GlobalVariable };

class Use;

class Value {
public:
  List<Use> users() const;

  void setName(const std::string &name) { this->name = name; }
  std::string getName() const { return name; }

  Type *getType();

  virtual std::string dump() { return name; };
  virtual ~Value() {}

protected:
  ValueType valueType;
  List<Use> userList;
  std::string name;
}; // namespace nnvm

// Every user manages the memory of uses;
class Use : public ListTrait<Use> {
public:
  // The list is userList of the usee.
  void removeFromList() {}

private:
  Value *user;
  Value *usee;
};

class Argument : public Value {};

} // namespace nnvm
