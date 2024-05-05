#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include <string>
#include <vector>
namespace nnvm {

enum class ValueID { Instruction, Constant, Argument, GlobalVariable };

class Use;

class Value {
public:
  Value() {}
  Value(ValueID valueID) : valueID(valueID) {}
  Value(ValueID valueID, Type *type) : valueID(valueID), type(type) {}
  List<Use> users() const { return userList; }

  void addUse(Use *use);

  void setName(const std::string &name) { this->name = name; }
  std::string getName() const { return name; }

  Type *getType() { return type; }

  virtual std::string dump() { return name; };
  virtual ~Value() {}

protected:
  ValueID valueID;
  Type *type;
  // Keep this as a usee
  List<Use> userList;
  std::string name;
}; // namespace nnvm

// Every user manages the memory of uses;
class Use : public ListTrait<Use> {
public:
  Use() {}
  Use(Value *user) : user(user) {}
  void set(Value *newUsee) {
    if (usee)
      removeFromList();

    // Add this use to userlist of new usee.
    newUsee->addUse(this);
    usee = newUsee;
  }

private:
  Value *user;
  Value *usee;
};

} // namespace nnvm
