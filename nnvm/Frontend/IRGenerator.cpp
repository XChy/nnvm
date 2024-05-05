#include "IRGenerator.h"
#include "Frontend/Symbol.h"
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

Type *IRGenerator::getIRType(SysYParser::BtypeContext *ctx) {
  if (ctx->INT())
    return ir->getIntType();
  if (ctx->FLOAT())
    return ir->getFloatType();
  static_assert("Not supported such type");
  return nullptr;
}
Type *IRGenerator::getIRType(SysYParser::FuncTypeContext *ctx) {
  if (ctx->INT())
    return ir->getIntType();
  if (ctx->FLOAT())
    return ir->getFloatType();
  if (ctx->VOID())
    return ir->getVoidType();
  static_assert("Not supported such type");
  return nullptr;
}

Any IRGenerator::visitBtype(SysYParser::BtypeContext *ctx) {
  if (ctx->INT())
    return SymbolType::getIntTy();
  if (ctx->FLOAT())
    return SymbolType::getFloatTy();
  static_assert("Not supported such type");
  return nullptr;
}

Any IRGenerator::visitFuncType(SysYParser::FuncTypeContext *ctx) {

  if (ctx->INT())
    return SymbolType::getIntTy();
  if (ctx->FLOAT())
    return SymbolType::getFloatTy();
  if (ctx->VOID())
    return SymbolType::getVoidTy();
  static_assert("Not supported such type");
  return nullptr;
}

Any IRGenerator::visitFuncDef(SysYParser::FuncDefContext *ctx) {
  Function *func = new Function();
  string funcName = ctx->IDENT()->getText();
  func->setName(funcName);

  // TODO: some checks

  ir->addFunction(func);
  symbolTable.create(funcName, ctx->funcType()->accept(this), func);

  func->setReturnType(getIRType(ctx->funcType()));
  BasicBlock *Entry = new BasicBlock("entry");
  func->insert(Entry);

  currentFunc = func;
  currentBB = Entry;

  symbolTable.enterScope();
  // TODO: add argument

  for (auto paramCtx : ctx->funcFParams()->funcFParam())
    paramCtx->accept(this);

  ctx->block()->accept(this);
  symbolTable.exitScope();

  return nullptr;
}

Any IRGenerator::visitFuncFParam(SysYParser::FuncFParamContext *ctx) {
  string paramName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(paramName)) {
    // TODO: error
    return nullptr;
  }

  SymbolType *symbolTy = ctx->btype()->accept(this);
  for (int i = 0; i < ctx->L_BRACKT().size(); i++) {
    if (i == 0)
      symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
    else
      symbolTy = SymbolType::getArrayTy(0, symbolTy, symbolTable);
  }

  Type *irTy = symbolTy->symbolID == SymbolType::Array
                   ? ir->getPtrType()
                   : getIRType(ctx->btype());

  Argument *arg = new Argument(irTy, paramName);
  symbolTable.create(paramName, symbolTy, arg);
  currentFunc->addArgument(arg);
  return nullptr;
}

Symbol *SymbolTable::create(const string &name) {
  scopes.back().insert({name, Symbol()});
  return &scopes.back()[name];
}
Symbol *SymbolTable::create(const string &name, SymbolType *type,
                            Value *entity) {
  scopes.back().insert({name, Symbol{entity, type}});
  return &scopes.back()[name];
}

Symbol *SymbolTable::lookup(const string &symbolName) {
  for (auto it = scopes.rbegin(); it != scopes.rend(); ++it) {
    auto symbolIt = it->find(symbolName);
    if (symbolIt != it->end())
      return &symbolIt->second;
  }
  return nullptr;
}

Symbol *SymbolTable::lookupInCurrentScope(const string &symbolName) {
  auto it = scopes.back().find(symbolName);
  if (it != scopes.back().end())
    return &it->second;
  else
    return nullptr;
}

void SymbolTable::enterScope() { scopes.push_back({}); }
void SymbolTable::exitScope() { scopes.pop_back(); }
