#pragma once

#include "Frontend/IRGenerator.h"
#include "IR/Module.h"
namespace nnvm {
void addBuiltinFunctions(Module &module, SymbolTable &symbolTable);
} /* namespace nnvm */
