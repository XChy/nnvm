#include "Function.h"
#include "Utils/Debug.h"

using namespace nnvm;

Function::Function(Module *module, const std::string &name, bool external)
    : Value(ValueID::Function), module(module), external(external) {
  setName(name);
}

Function::Function(Module *module, const std::string &name, Type *retType,
                   const std::vector<Argument *> &args, bool external)
    : Value(ValueID::Function), module(module), arguments(args),
      retType(retType), external(external) {
  setName(name);
}

void Function::insert(BasicBlock *BB) {
  if (BB->getParent())
    BB->removeFromList();
  BB->setParent(this);
  BBList.insertBack(BB);
}

void Function::insertBack(BasicBlock *BB, Iterator pos) {
  if (BB->getParent())
    BB->removeFromList();
  BB->setParent(this);
  pos.insertBack(BB);
}

void Function::addArgument(Argument *arg) { arguments.push_back(arg); }

std::vector<Argument *> Function::getArguments() { return arguments; }

std::string Function::dumpAsOperand() {
  return getReturnType()->dump() + " " + getName();
}

std::string Function::dump() {
  std::string ret;
  if (external)
    ret += "external ";

  ret += retType->dump() + " " + getName();

  ret += "(";
  for (auto *arg : arguments) {
    ret += arg->dump();
    ret += (arg == arguments.back()) ? "" : ", ";
  }
  ret += ")";

  if (external)
    return ret + "\n\n";

  ret += " {\n";
  for (auto *BB : BBList)
    ret += BB->dump();
  ret += "}\n\n";
  return ret;
}

Function::~Function() {
  BBList.freeAll();
  for (auto *arg : arguments)
    delete arg;
}
