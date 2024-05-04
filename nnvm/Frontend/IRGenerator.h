#pragma once

#include "IR/Module.h"
#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include <unordered_map>

namespace nnvm {

using antlrcpp::Any;
using std::string;
using std::unordered_map;
using std::vector;

class SymbolTable {
public:
  Value *lookup(const string &symbolName);
  Value *lookupInCurrentScope(const string &symbolName);

  void enterScope();
  void exitScope();

private:
  vector<unordered_map<string, Value *>> scopes;
  unordered_map<string, Value *> *currentScope;
};

class IRGenerator final : public SysYParserBaseVisitor {
public:
  void emitIR(antlr4::tree::ParseTree *ast, Module *ir);

  Any visitProgram(SysYParser::ProgramContext *ctx) override;
  Any visitBtype(SysYParser::BtypeContext *ctx) override;

  Any visitFuncType(SysYParser::FuncTypeContext *ctx) override;
  Any visitFuncDef(SysYParser::FuncDefContext *ctx) override;

private:
  Module *ir;
  Function *currentFunc;
  BasicBlock *currentBB;
  SymbolTable symbolTable;
};
} // namespace nnvm
