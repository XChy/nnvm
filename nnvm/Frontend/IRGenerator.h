#pragma once

#include "Frontend/Symbol.h"
#include "IR/IRBuilder.h"
#include "IR/Module.h"
#include "IR/Type.h"
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
  Symbol *create(const string &name);
  Symbol *create(const string &name, SymbolType *type, Value *entity);
  Symbol *lookup(const string &symbolName);
  Symbol *lookupInCurrentScope(const string &symbolName);
  bool isGlobal() {
    return scopes.size() == 1;
  }
  ~SymbolTable() {
    for (auto *ty : managedTys)
      delete ty;
  }

  void enterScope();
  void exitScope();

private:
  friend class SymbolType;
  vector<unordered_map<string, Symbol>> scopes;
  vector<SymbolType *> managedTys;
};

class IRGenerator final : public SysYParserBaseVisitor {
public:
  IRGenerator();
  void emitIR(antlr4::tree::ParseTree *ast, Module *ir);

  Any visitProgram(SysYParser::ProgramContext *ctx) override;
  Any visitBtype(SysYParser::BtypeContext *ctx) override;


  Any visitFuncType(SysYParser::FuncTypeContext *ctx) override;
  Any visitFuncDef(SysYParser::FuncDefContext *ctx) override;
  Any visitFuncFParam(SysYParser::FuncFParamContext *ctx) override;

  Any visitStmt(SysYParser::StmtContext *ctx) override;

  Any visitCond(SysYParser::CondContext *ctx) override;

  Any visitCall(SysYParser::CallContext *ctx) override;
  Any visitLVal(SysYParser::LValContext *ctx) override;
  Any visitExp(SysYParser::ExpContext *ctx) override;

  Any visitVarDecl(SysYParser::VarDeclContext *ctx) override;
  Any visitConstDecl(SysYParser::ConstDeclContext *ctx) override;
  Any visitConstInitVal(SysYParser::ConstInitValContext *ctx) override;

  Type *toIRType(SymbolType *symbolTy);

private:
  struct whileLoop {
    BasicBlock *condBB;
    BasicBlock *afterBB;
    whileLoop(BasicBlock *condBB, BasicBlock *afterBB) : condBB(condBB), afterBB(afterBB) {}
  };
  Module *ir;
  IRBuilder builder;

  Symbol *currentFunc;
  BasicBlock *currentBB;
  SymbolTable symbolTable;
  std::stack<whileLoop> whileLoops;
  Constant *constZeroInt;
  Constant *constOneInt;
  Constant *constZeroFloat;
  Constant *constOneFloat;
  Constant *constTrue;
  Constant *constFalse;

  //help function
  Any expBinOp(SysYParser::ExpContext*);
  Any expUnaryOp(SysYParser::ExpContext*);
  Any solveConstExp(SysYParser::ExpContext*);
  Any solveConstLval(SysYParser::LValContext*);
  Any solveConstInit(std::vector<SysYParser::ConstInitValContext*> ctxs, std::list<int> dims);
  Any constDef(SysYParser::ConstDefContext *ctx, SysYParser::BtypeContext *btypeCtx);
  Any varDef(SysYParser::VarDefContext *ctx, SysYParser::BtypeContext *btypeCtx);
  Type *getIRType(SysYParser::BtypeContext *ctx);
  Type *getIRType(SymbolType *symTy, SysYParser::BtypeContext *ctx);
  Type *getIRType(SysYParser::FuncTypeContext *ctx);
};
} // namespace nnvm
