#include "Frontend/Symbol.h"
#include "IR/Function.h"
#include <Frontend/Builtin.h>
#include <vector>

using namespace nnvm;

static inline void addBuiltin(Module &M, SymbolTable &symbolTable,
                              const std::string &name, SymbolType *retType,
                              const std::vector<SymbolType *> argTypes) {

  std::vector<Argument *> args;
  for (auto ty : argTypes)
    args.push_back(new Argument(toIRType(M, ty), ""));

  Function *F = new Function(&M, name, toIRType(M, retType), args, true);

  M.addFunction(F);

  symbolTable.create(name,
                     SymbolType::getFuncTy(retType, argTypes, symbolTable), F);
}

void nnvm::addBuiltinFunctions(Module &M, SymbolTable &ST) {
  addBuiltin(M, ST, "getint", SymbolType::getIntTy(), {});
  addBuiltin(M, ST, "getch", SymbolType::getIntTy(), {});
  addBuiltin(M, ST, "putint", SymbolType::getVoidTy(),
             {SymbolType::getIntTy()});
}