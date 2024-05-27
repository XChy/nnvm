#include "GlobalVariable.h"
#include "IR/Module.h"

using namespace nnvm;

GlobalVariable::GlobalVariable(Module &module, Type *innerType)
    : Value(ValueID::GlobalVariable, module.getPtrType()),
      innerType(innerType) {}

GlobalVariable::GlobalVariable(Module &module, Constant *initVal)
    : Value(ValueID::GlobalVariable, module.getPtrType()), initVal(initVal),
      innerType(initVal->getType()) {}

std::string GlobalVariable::dump() {
  auto initDump = (initVal ? (" init with " + initVal->dumpAsOperand()) : "");
  return "global " + type->dump() + " " + getName() + initDump + "\n";
}

std::string GlobalVariable::dumpAsOperand() {
  return type->dump() + " @" + getName();
}
