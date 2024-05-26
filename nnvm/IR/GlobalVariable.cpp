#include "GlobalVariable.h"
#include "IR/Module.h"

using namespace nnvm;

GlobalVariable::GlobalVariable(Module &module)
    : Value(ValueID::GlobalVariable, module.getPtrType()) {}

GlobalVariable::GlobalVariable(Module &module, Constant *initVal)
    : Value(ValueID::GlobalVariable, module.getPtrType()), initVal(initVal) {}

std::string GlobalVariable::dump() {
  auto initDump = (initVal ? (" = " + initVal->dump()) : "");
  return "global " + type->dump() + " " + getName() + initDump + "\n";
}

std::string GlobalVariable::dumpAsOperand() {
  return type->dump() + " @" + getName();
}
