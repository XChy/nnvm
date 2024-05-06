#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include <string>
#include <vector>
namespace nnvm {

enum class ValueID {
  Instruction,
  BasicBlock,
  Function,
  Constant,
  Argument,
  GlobalVariable
};

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

  void setType(Type *type) { this->type = type; }
  Type *getType() { return type; }

  virtual std::string dump() { return name; };
  virtual std::string dumpAsOperand() { return type->dump() + " %" + name; };
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
  Use(Value *user, Value *usee) : user(user), usee(usee) {
    if (usee)
      usee->addUse(this);
  }

  void set(Value *newUsee) {
    if (usee)
      removeFromList();

    // Add this use to userlist of new usee.
    if (newUsee)
      newUsee->addUse(this);
    usee = newUsee;
  }

  Value *getUser() { return user; }
  Value *getUsee() { return usee; }

private:
  Value *user;
  Value *usee;
};

} // namespace nnvm
