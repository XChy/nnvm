#pragma once

#include "Frontend/Symbol.h"
#include "IR/IRBuilder.h"
#include "IR/Module.h"
#include "IR/Type.h"
#include "SysYParserBaseVisitor.h"
#include "tree/ParseTree.h"
#include <any>
#include <list>
#include <unordered_map>
#include <utility>

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
  bool isGlobal() { return scopes.size() == 1; }
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

template <typename T> bool any_is(const std::any &v) {
  return v.type() == typeid(T);
}

template <typename T> T any_as(const std::any &v) {
  assert(any_is<T>(v));
  return std::any_cast<T>(v);
}

class IRGenerator final : public SysYParserBaseVisitor {
public:
  IRGenerator();
  void emitIR(antlr4::tree::ParseTree *ast, Module *ir);

  std::any visitProgram(SysYParser::ProgramContext *ctx) override;
  std::any visitBtype(SysYParser::BtypeContext *ctx) override;

  std::any visitFuncType(SysYParser::FuncTypeContext *ctx) override;
  std::any visitFuncDef(SysYParser::FuncDefContext *ctx) override;
  std::any visitFuncFParam(SysYParser::FuncFParamContext *ctx) override;

  std::any visitStmt(SysYParser::StmtContext *ctx) override;

  std::any visitCond(SysYParser::CondContext *ctx) override;

  std::any visitCall(SysYParser::CallContext *ctx) override;
  Symbol visitSpecialCallWithLineNo(const std::string &name, uint64_t lineNo);
  std::any visitLVal(SysYParser::LValContext *ctx) override;
  std::any visitExp(SysYParser::ExpContext *ctx) override;

  std::any visitVarDecl(SysYParser::VarDeclContext *ctx) override;
  std::any visitConstDecl(SysYParser::ConstDeclContext *ctx) override;
  std::any visitConstInitVal(SysYParser::ConstInitValContext *ctx) override;

  std::any visitBlock(SysYParser::BlockContext *ctx) override;

  Type *sym2IR(SymbolType *symbolTy);

  Symbol genImplicitCast(Symbol original, SymbolType *expectedType);
  void widen(Symbol &lhs, Symbol &rhs);

private:
  struct whileLoop {
    BasicBlock *condBB;
    BasicBlock *afterBB;
    whileLoop(BasicBlock *condBB, BasicBlock *afterBB)
        : condBB(condBB), afterBB(afterBB) {}
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

  // helper function
  std::any expBinOp(SysYParser::ExpContext *);
  std::any expUnaryOp(SysYParser::ExpContext *);
  std::any solveConstExp(SysYParser::ExpContext *);
  std::any solveConstLval(SysYParser::LValContext *);
  std::any solveConstInit(std::vector<SysYParser::ConstInitValContext *> ctxs,
                          std::list<int> dims);
  std::any constDef(SysYParser::ConstDefContext *ctx,
                    SysYParser::BtypeContext *btypeCtx);
  std::any varDef(SysYParser::VarDefContext *ctx,
                  SysYParser::BtypeContext *btypeCtx);

  void arrInitRoll(uint &valueCount, uint &offset, Value *currentValue,
                   Value *irVal, Type *irEl);

  bool solveInit(SysYParser::InitValContext *initVal, SymbolType *currentType,
                 Type *irElementType, std::vector<Value *> &output);

  bool fetchElementsFrom(SysYParser::InitValContext *initVal,
                         SymbolType *currentType, Type *irElementType,
                         std::vector<Constant *> &output);
  Constant *fetchFlatElementsFrom(SysYParser::InitValContext *ctx,
                                  SymbolType *type);

  bool fetchElementsFrom(SysYParser::ConstInitValContext *initVal,
                         SymbolType *currentType, Type *irElementType,
                         std::vector<Constant *> &output);
  Constant *fetchFlatElementsFrom(SysYParser::ConstInitValContext *ctx,
                                  SymbolType *type);

  Constant *createConstInt(int value);
  Constant *createConstFloat(float value);

  Type *getIRType(SysYParser::BtypeContext *ctx);
  Type *getIRType(SymbolType *symTy, SysYParser::BtypeContext *ctx);
  Type *getIRType(SysYParser::FuncTypeContext *ctx);
};
} // namespace nnvm
