#include "Function.h"
#include "Utils/Debug.h"

using namespace nnvm;

Function::Function(Module *module) : module(module) {}

void Function::insert(BasicBlock *BB) {
  if (BB->getParent() == this)
    nnvm_unreachable("Don't insert multiple times");
  if (BB->getParent())
    BB->removeFromList();
  BB->setParent(this);
  BBList.insertBack(BB);
}

void Function::addArgument(Argument *arg) { arguments.push_back(arg); }

std::vector<Argument *> Function::getArguments() { return arguments; }

std::string Function::dumpAsOperand() {
  return getReturnType()->dump() + " " + getName();
}

std::string Function::dump() {
  std::string ret = retType->dump() + " " + getName();

  ret += "(";
  for (auto *arg : arguments) {
    ret += arg->dump();
    ret += (arg == arguments.back()) ? "" : ", ";
  }
  ret += ")";

  ret += " {\n";
  for (auto *BB : BBList)
    ret += BB->dump();
  ret += "}\n";
  return ret;
}

Function::~Function() {
  BBList.freeAll();
  for (auto *arg : arguments)
    delete arg;
}
