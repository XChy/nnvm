#include "Value.h"
#include "ADT/Ranges.h"
#include "Module.h"
#include <string>

using namespace nnvm;

void Value::addUse(Use *use) { userList.insertBack(use); }

void Value::setName(const std::string &name, Module &module) {
  setName(module.allocValueName(name));
}

void Value::replaceSelf(Value *replacement) {
  for (Use *use : incChange(userList))
    use->set(replacement);
}
