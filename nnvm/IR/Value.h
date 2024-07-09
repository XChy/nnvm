#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "IR/Type.h"
#include <functional>
#include <string>
#include <vector>
namespace nnvm {

enum class ValueID {
  Instruction,
  BasicBlock,
  Function,
  Constant,
  UBValue,
  Argument,
  GlobalVariable
};

class Use;
class Instruction;
class Module;

class Value {
public:
  Value() {}
  Value(ValueID valueID) : valueID(valueID) {}
  Value(ValueID valueID, Type *type) : valueID(valueID), type(type) {}
  List<Use> &users() { return userList; }

  void addUse(Use *use);

  // Replace this value in its users with the replacement.
  void replaceSelf(Value *replacement);
  void replaceSelfIf(Value *replacement, std::function<bool(Use *U)> func);

  void setName(const std::string &name) { this->name = name; }

  // Used to resolve naming conflict.
  void setName(const std::string &name, Module &module);
  std::string getName() const { return name; }

  void setType(Type *type) { this->type = type; }
  Type *getType() const { return type; }

  bool isConstant() { return valueID == ValueID::Constant; }
  bool isInstruction() { return valueID == ValueID::Instruction; }

  template <typename To> bool isa() { return dynamic_cast<To *>(this); }

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
  Use(Instruction *user) : user(user) {}
  Use(Instruction *user, Value *usee) : user(user), usee(usee) {
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

  Instruction *getUser() { return user; }
  Value *getUsee() { return usee; }

private:
  Instruction *user;
  Value *usee;
};

} // namespace nnvm
