#include "IRGenerator.h"
#include "Frontend/Symbol.h"
#include "IR/BasicBlock.h"
#include "IR/Instruction.h"
#include "IR/Type.h"

using namespace nnvm;

void IRGenerator::emitIR(antlr4::tree::ParseTree *ast, Module *ir) {
  this->ir = ir;
  builder.setModule(ir);
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
  string funcName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(funcName)) {
    // TODO: error
    return Symbol::none();
  }

  // TODO: some checks
  Function *func = new Function();
  func->setName(funcName);

  ir->addFunction(func);
  symbolTable.create(funcName, ctx->funcType()->accept(this), func);

  func->setReturnType(getIRType(ctx->funcType()));
  BasicBlock *Entry = new BasicBlock("entry");
  func->insert(Entry);
  builder.setInsertPoint(Entry->end());

  currentFunc = func;
  currentBB = Entry;

  symbolTable.enterScope();

  for (auto paramCtx : ctx->funcFParams()->funcFParam())
    paramCtx->accept(this);

  // Demote args into stack.
  for (int i = 0; i < func->getArguments().size(); i++) {
    auto *arg = func->getArguments()[i];
    auto *stack =
        symbolTable
            .lookup(ctx->funcFParams()->funcFParam(i)->IDENT()->getText())
            ->entity;
    builder.buildStore(arg, stack);
  }

  ctx->block()->accept(this);
  symbolTable.exitScope();

  return Symbol::none();
}

Any IRGenerator::visitFuncFParam(SysYParser::FuncFParamContext *ctx) {
  string paramName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(paramName)) {
    // TODO: error
    return Symbol::none();
  }

  SymbolType *symbolTy = ctx->btype()->accept(this);
  for (int i = 0; i < ctx->L_BRACKT().size(); i++) {
    if (i == 0)
      symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
    else
      // TODO: calculate the number of element
      symbolTy = SymbolType::getArrayTy(0, symbolTy, symbolTable);
  }

  Type *irTy = symbolTy->symbolID == SymbolType::Array
                   ? ir->getPtrType()
                   : getIRType(ctx->btype());

  Argument *arg = new Argument(irTy, paramName);
  Value *stackForArg = builder.buildStack(arg->getType(), paramName + ".stack");
  currentFunc->addArgument(arg);
  symbolTable.create(paramName, symbolTy, stackForArg);

  // Demote argument to stack.
  return nullptr;
}

Any IRGenerator::visitStmt(SysYParser::StmtContext *ctx) {
  if (ctx->ASSIGN()) {
    Symbol lhs = ctx->lVal()->accept(this);
    if (!lhs)
      return Symbol::none();
    Symbol rhs = ctx->exp()->accept(this);
    if (!rhs)
      return Symbol::none();

    return Symbol{builder.buildStore(rhs.entity, lhs.entity), nullptr};
  }
  return visitChildren(ctx);
}

Any IRGenerator::visitLVal(SysYParser::LValContext *ctx) {
  // TODO: handle array index
  Symbol address = *symbolTable.lookup(ctx->IDENT()->getText());

  if (!address) {
    // TODO: error
    return Symbol::none();
  }

  return address;
}

Type *IRGenerator::toIRType(SymbolType *symbolTy) {
  switch (symbolTy->symbolID) {
  case SymbolType::Int:
    return ir->getIntType();
  case SymbolType::Float:
    return ir->getFloatType();
  case SymbolType::Bool:
    return ir->getBoolType();
  case SymbolType::Void:
    return ir->getVoidType();
  case SymbolType::Array:
    return ir->getPtrType();
  default:
    assert("Not support transform symbol type");
    return nullptr;
  }
}

Any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
  if (ctx->lVal()) {
    Symbol lVal = ctx->lVal()->accept(this);
    if (!lVal)
      return nullptr;
    return Symbol{builder.buildLoad(lVal.entity, toIRType(lVal.symbolType),
                                    lVal.entity->getName() + ".load"),
                  lVal.symbolType};
  }

  if (ctx->PLUS()) {
    // TODO: how to infer type?
    Symbol lhs = ctx->exp(0)->accept(this);
    if (!lhs)
      return nullptr;
    Symbol rhs = ctx->exp(1)->accept(this);
    if (!rhs)
      return nullptr;
    Value *Add = builder.buildInst(InstID::Add, {lhs.entity, rhs.entity},
                                   ir->getIntType());
    return Symbol{Add, lhs.symbolType};
  }

  return visitChildren(ctx);
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
