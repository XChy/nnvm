#include "Function.h"
#include "Utils/Debug.h"

using namespace nnvm;

Function::Function() {}

void Function::insert(BasicBlock *BB) {
  BB->setParent(this);
  BBList.insertBack(BB);
}

std::string Function::dump() {
  std::string ret = retType->dump() + " " + getName() + "(" + ")";
  ret += " {\n";
  for (auto *BB : BBList)
    ret += BB->dump();
  ret += "}";
  return ret;
}

Function::~Function() {
  for (auto *BB : BBList)
    delete BB;
}
