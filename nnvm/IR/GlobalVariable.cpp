#include "GlobalVariable.h"
#include "IR/Attributes.h"
#include "IR/Module.h"

using namespace nnvm;

GlobalVariable::GlobalVariable(Module &module, Type *innerType)
    : Value(ValueID::GlobalVariable, module.getPtrType()), innerType(innerType),
      module(module) {}

GlobalVariable::GlobalVariable(Module &module, Constant *initVal)
    : Value(ValueID::GlobalVariable, module.getPtrType()), initVal(initVal),
      innerType(initVal->getType()), module(module) {
  module.addGlobalVar(this);
}

void GlobalVariable::setName(const std::string &name) {
  module.removeGlobalVar(getName());
  Value::setName(name);
  module.addGlobalVar(this);
}

std::string GlobalVariable::dump() {
  std::string decorator = getDecoratorStr(attributes);
  auto initDump = (initVal ? (" init with " + initVal->dumpAsOperand()) : "");
  return decorator + "global " + type->dump() + " " + getName() + initDump +
         "\n";
}

std::string GlobalVariable::dumpAsOperand() {
  return type->dump() + " @" + getName();
}
