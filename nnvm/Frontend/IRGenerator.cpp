#include "IRGenerator.h"
#include "IR/BasicBlock.h"
#include "IR/Type.h"

using namespace nnvm;

void IRGenerator::emitIR(antlr4::tree::ParseTree *ast, Module *ir) {
  this->ir = ir;
  visit(ast);
}
Any IRGenerator::visitProgram(SysYParser::ProgramContext *ctx) {
  symbolTable.enterScope();
  visitChildren(ctx);
  symbolTable.exitScope();
  return Any();
}

Any IRGenerator::visitBtype(SysYParser::BtypeContext *ctx) {
  if (ctx->INT())
    return ir->getIntType();
  if (ctx->FLOAT())
    return ir->getFloatType();
  static_assert("Not supported such type");
  return nullptr;
}

Any IRGenerator::visitFuncType(SysYParser::FuncTypeContext *ctx) {
  if (ctx->INT())
    return ir->getIntType();
  if (ctx->FLOAT())
    return ir->getFloatType();
  if (ctx->VOID())
    return ir->getVoidType();
  static_assert("Not supported such type");
  return nullptr;
}

Any IRGenerator::visitFuncDef(SysYParser::FuncDefContext *ctx) {
  Function *func = new Function();
  func->setName(ctx->IDENT()->getText());
  // TODO: some checks

  ir->addFunction(func);

  Type *retTy = ctx->funcType()->accept(this);
  func->setReturnType(retTy);
  BasicBlock *Entry = new BasicBlock("entry");
  func->insert(Entry);

  currentFunc = func;
  currentBB = Entry;

  ctx->block()->accept(this);
  return nullptr;
}

Value *SymbolTable::lookup(const string &symbolName) {
  for (auto it = scopes.rbegin(); it != scopes.rend(); ++it) {
    auto symbolIt = it->find(symbolName);
    if (symbolIt != it->end())
      return symbolIt->second;
  }
  return nullptr;
}

Value *SymbolTable::lookupInCurrentScope(const string &symbolName) {
  return scopes.back()[symbolName];
}

void SymbolTable::enterScope() { scopes.push_back({}); }
void SymbolTable::exitScope() { scopes.pop_back(); }
