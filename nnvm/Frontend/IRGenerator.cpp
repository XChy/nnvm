#include "IRGenerator.h"
#include "Frontend/Symbol.h"
#include "IR/BasicBlock.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "IR/Type.h"
#include "Utils/Debug.h"
#include <string>
#include <string_view>

using namespace nnvm;
static int getRadixOf(std::string_view text);

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

Any IRGenerator::solveConstExp(SysYParser::ExpContext *ctx) {
  if (ctx->exp().size() < 2) {
    if (auto numCtx = ctx->number()) {
      if (auto intCtx = numCtx->INTEGER_CONST()) {
        string sText = intCtx->getText();
        return std::stoi(sText, 0, getRadixOf(sText));
      }
      if (auto floatCtx = numCtx->FLOAT_CONST()) {
        string sText = floatCtx->getText();
        return std::stof(sText);
      }
    }
    if (auto lvalCtx = ctx->lVal()) {
      string valName = lvalCtx->IDENT()->getText();
      Constant *valConst = cast<Constant>(symbolTable.lookup(valName)->entity);
      return Any((int)(valConst->hash()));
    }
    assert("Should not reach here");
  }
  Any lhsAny = solveConstExp(ctx->exp()[0]);
  Any rhsAny = solveConstExp(ctx->exp()[1]);
  if (lhsAny.is<float>() || rhsAny.is<float>()) {
    float lhs = lhsAny.as<float>();
    float rhs = rhsAny.as<float>();
    if (ctx->PLUS()) {
      return lhs + rhs;
    }
    if (ctx->MINUS()) {
      return lhs - rhs;
    }
    if (ctx->MUL()) {
      return lhs * rhs;
    }
    if (ctx->DIV()) {
      return lhs / rhs;
    }
    assert("Should not reach here");
  } else if (lhsAny.is<int>() && rhsAny.is<int>()){
    int lhs = lhsAny.as<int>();
    int rhs = rhsAny.as<int>();
    if (ctx->PLUS()) {
      return lhs + rhs;
    }
    if (ctx->MINUS()) {
      return lhs - rhs;
    }
    if (ctx->MUL()) {
      return lhs * rhs;
    }
    if (ctx->DIV()) {
      return lhs / rhs;
    }
  assert("Should not reach here");
  }
  assert("Should not reach here");
  return -1;
}

Any IRGenerator::visitConstDecl(SysYParser::ConstDeclContext *ctx) {
  for (auto ctxDef : ctx->constDef()) {
    // TODO: type check
    constDef(ctxDef, ctx->btype());
  }
  return Symbol::none();
}

Any IRGenerator::constDef(SysYParser::ConstDefContext *ctx,
                          SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = btype->accept(this);
  string symbolName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(symbolName)) {
    //TODO: error
    return Symbol::none();
  }
  for (int i = 0; i < ctx->constExp().size(); i += 1) {
    Any nrElements = solveConstExp(ctx->constExp()[i]->exp());
    assert(nrElements.is<int>());
    symbolType = SymbolType::getArrayTy(nrElements, symbolType, symbolTable);
  }
  Type *irType = symbolType->symbolID == SymbolType::Array
                   ? ir->getPtrType()
                   : getIRType(btype);
  Any initVal = solveConstExp(ctx->constInitVal()->constExp()->exp());
  Constant *constVal = nullptr;
  if (irType->getClass() == Type::Integer) {
    assert(initVal.is<int>());
    constVal = ConstantInt::create(*ir, irType, initVal.as<int>());
  } else if (irType->getClass() == Type::Float) {
    assert(initVal.is<float>());
    constVal = ConstantFloat::create(*ir, initVal.as<float>());
  } else {
    //TODO: 
    assert("not implemented");
  }
  symbolTable.create(symbolName, symbolType, constVal);
  return Symbol::none();
}

Any IRGenerator::visitVarDecl(SysYParser::VarDeclContext *ctx) {
  assert("Not implemented");
}

Any IRGenerator::varDef(SysYParser::VarDefContext *ctx, 
                        SysYParser::BtypeContext *btype) {
  assert("Not implemented");
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
  SymbolType *returnType = ctx->funcType()->accept(this);

  vector<SymbolType *> argsType;

  for (auto paramCtx : ctx->funcFParams()->funcFParam()) {
    SymbolType *symbolTy = paramCtx->btype()->accept(this);
    for (int i = 0; i < paramCtx->L_BRACKT().size(); i++) {
      if (i == 0)
        symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
      else {
        // TODO: check---calculate the number of element
        Any numOfElement = solveConstExp(paramCtx->exp()[i]);
        assert(numOfElement.is<int>());
        symbolTy = SymbolType::getArrayTy(numOfElement, symbolTy, symbolTable);
      }
    }
    argsType.push_back(symbolTy);
  }

  currentFunc = symbolTable.create(
      funcName, SymbolType::getFuncTy(returnType, argsType, symbolTable), func);

  func->setReturnType(getIRType(ctx->funcType()));
  BasicBlock *Entry = new BasicBlock("entry");
  func->insert(Entry);
  builder.setInsertPoint(Entry->end());

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
  string paramName = ctx->IDENT()->getText();;
  if (symbolTable.lookupInCurrentScope(paramName)) {
    // TODO: error
    return Symbol::none();
  }

  SymbolType *symbolTy = ctx->btype()->accept(this);
  for (int i = 0; i < ctx->L_BRACKT().size(); i++) {
    if (i == 0)
      symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
    else {
      // TODO: check---calculate the number of element
      Any numOfElement = solveConstExp(ctx->exp()[i-1]);
      assert(numOfElement.is<int>());
      symbolTy = SymbolType::getArrayTy(numOfElement, symbolTy, symbolTable);
    }
  }

  Type *irTy = symbolTy->symbolID == SymbolType::Array
                   ? ir->getPtrType()
                   : getIRType(ctx->btype());

  Argument *arg = new Argument(irTy, paramName);
  Value *stackForArg = builder.buildStack(arg->getType(), paramName + ".stack");
  ((Function *)currentFunc->entity)->addArgument(arg);
  symbolTable.create(paramName, symbolTy, stackForArg);

  // Demote argument to stack.
  return Symbol::none();
}

Any IRGenerator::visitStmt(SysYParser::StmtContext *ctx) {
  if (ctx->ASSIGN()) {
    Symbol lhs = ctx->lVal()->accept(this);
    if (!lhs)
      return Symbol::none();
    Symbol rhs = ctx->exp()->accept(this);
    if (!rhs)
      return Symbol::none();
    if (!lhs.symbolType->isIdentical(*rhs.symbolType)) {
      //TODO: error, cast
      return Symbol::none();
    }
    return Symbol{builder.buildStore(rhs.entity, lhs.entity), nullptr};
  } else if (ctx->returnStmt()) {
    if (ctx->returnStmt()->exp()) {
      Symbol returned = ctx->returnStmt()->exp()->accept(this);
      if (!returned)
        return Symbol::none();

      if (!returned.symbolType->isIdentical(
              *currentFunc->symbolType->containedTy)) {
        // TODO: error
        return Symbol::none();
      }

      return Symbol{builder.buildRet(returned.entity), nullptr};
    } else {
      if (currentFunc->symbolType->containedTy->symbolID !=
          SymbolType::SymbolID::Void) {
        // TODO:  error
        return Symbol::none;
      }

      return Symbol{builder.buildRet(nullptr), nullptr};
    }
  } else if (ctx->exp()) {
    return ctx->exp()->accept(this);
  }
  nnvm_unreachable("Not implemeted");
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

static int getRadixOf(std::string_view text) {

  if (text.size() >= 2) {
    std::string_view prefix = text.substr(0, 2);
    if (prefix == "0x" || prefix == "0X")
      return 16;
    if (prefix[0] == '0')
      return 8;
    // TODO: It seems that SysY don't have binary literal?
    if (prefix == "0b")
      return 2;
    return 10;
  }
  return 10;
}

Any IRGenerator::expBinOp(SysYParser::ExpContext *ctx) {
  // TODO: how to infer type?
  Symbol lhs = ctx->exp(0)->accept(this);
  //TODO: error
  if (!lhs)
    return nullptr;
  Symbol rhs = ctx->exp(1)->accept(this);
  if (!rhs)
    return nullptr;
  
  //TODO: error
  if (!rhs.symbolType->isIdentical(*lhs.symbolType)) {
    return nullptr;
  }
  Value *val = nullptr;
  if (ctx->PLUS()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<AddInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FAddInst>(lhs.entity, rhs.entity, ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MINUS()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<SubInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FSubInst>(lhs.entity, rhs.entity, ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MUL()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<MulInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FMulInst>(lhs.entity, rhs.entity, ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->DIV()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<SDivInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FDivInst>(lhs.entity, rhs.entity, ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MOD()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<SRemInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FRemInst>(lhs.entity, rhs.entity, ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  assert("Should not reach here!");
}

Any IRGenerator::expUnaryOp(SysYParser::ExpContext *ctx) {
  assert(ctx->exp().size()==1);
  Symbol operand = ctx->exp()[0]->accept(this);
  if (!operand) {
    return nullptr;
  }
  Value *val = nullptr;
  //TODO: unary op
  if (ctx->unaryOp()->PLUS()) {
  }
  if (ctx->unaryOp()->PLUS()) {
  }
  if (ctx->unaryOp()->NOT()) {
  }
  assert("UnaryOp Not implemented!");
}

Any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
  if (ctx->lVal()) {
    Symbol lVal = ctx->lVal()->accept(this);
    if (!lVal)
      //TODO: error
      return nullptr;
    if (auto constVal = dyn_cast<Constant>(lVal.entity)) {
      return lVal;
    }
    return Symbol{builder.buildLoad(lVal.entity, toIRType(lVal.symbolType),
                                    lVal.entity->getName() + ".load"),
                  lVal.symbolType};
  } 

  if (ctx->PLUS() ||ctx->MINUS() || ctx->DIV() || ctx->MOD() || 
      ctx->MUL()) {
    return expBinOp(ctx);
  }

  if (auto *number = ctx->number()) {
    if (auto *floatConst = number->FLOAT_CONST()) {
      // TODO: do we handle hexidecimal float in std::stof?
      return Symbol{
          ConstantFloat::create(*ir, std::stof(floatConst->getText())),
          SymbolType::getFloatTy()};
    }

    if (auto *intConst = number->INTEGER_CONST()) {
      return Symbol{
          ConstantInt::create(*ir, ir->getIntType(),
                              std::stoi(intConst->getText(), 0,
                                        getRadixOf(intConst->getText()))),
          SymbolType::getIntTy()};
    }

    nnvm_unreachable("No such literal number")
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
