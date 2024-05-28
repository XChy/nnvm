#include "IRGenerator.h"
#include "Frontend/Builtin.h"
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

IRGenerator::IRGenerator() {}

void IRGenerator::emitIR(antlr4::tree::ParseTree *ast, Module *ir) {
  this->ir = ir;
  builder.setModule(ir);
  constZeroInt = ConstantInt::create(*ir, ir->getIntType(), 0);
  constOneInt = ConstantInt::create(*ir, ir->getIntType(), 1);
  constZeroFloat = ConstantFloat::create(*ir, 0.0);
  constOneFloat = ConstantFloat::create(*ir, 1.0);
  constTrue = ConstantInt::create(*ir, ir->getBoolType(), 1);
  constFalse = ConstantInt::create(*ir, ir->getBoolType(), 0);
  visit(ast);
}

Any IRGenerator::visitProgram(SysYParser::ProgramContext *ctx) {
  symbolTable.enterScope();
  addBuiltinFunctions(*ir, symbolTable);
  visitChildren(ctx);
  symbolTable.exitScope();
  return Any();
}

Type *IRGenerator::getIRType(SymbolType *symTy, SysYParser::BtypeContext *ctx) {
  return symTy->symbolID == SymbolType::Array ? ir->getPtrType()
                                              : getIRType(ctx);
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

/**
 * This function is used to solve the constant lval
 * @param ctx the context of the lval
 * @return The value of the lval, type is int or float
 */
Any IRGenerator::solveConstLval(SysYParser::LValContext *ctx) {
  std::vector<nnvm::SysYParser::ExpContext *> indexs = ctx->exp();
  Constant *valConstant =
      cast<Constant>(symbolTable.lookup(ctx->IDENT()->getText())->entity);
  if (auto constInt = dyn_cast<ConstantInt>(valConstant)) {
    return constInt->getValue();
  }
  if (auto constFloat = dyn_cast<ConstantFloat>(valConstant)) {
    return constFloat->getValue();
  }
  if (auto constArray = dyn_cast<ConstantArray>(valConstant)) {
    size_t i = 0;
    for (; i < indexs.size() - 1; i++) {
      Any index = solveConstExp(indexs[i]);
      assert(index.is<int>());
      // TODO: Report invalid index error.
      if (i < indexs.size() - 1) {
        constArray =
            cast<ConstantArray>(constArray->getValue()[index.as<int>()]);
      } else {
        valConstant = constArray->getValue()[index.as<int>()];
        if (auto constInt = dyn_cast<ConstantInt>(valConstant)) {
          return constInt->getValue();
        }
        if (auto constFloat = dyn_cast<ConstantFloat>(valConstant)) {
          return constFloat->getValue();
        }
      }
    }
  }
}

/**
 * This function is used to solve the constant expression
 * @param ctx the context of the expression
 * @return The value of the expression, type is int or float
 */
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
      return solveConstLval(lvalCtx);
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
  } else if (lhsAny.is<int>() && rhsAny.is<int>()) {
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

Any IRGenerator::solveConstInit(
    std::vector<SysYParser::ConstInitValContext *> initVals,
    std::list<int> dims) {
  std::vector<Constant *> arrayElements;
  if (dims.size() == 0) {
    // recursion end
    // TODO: Report invalid init value error.
    if (initVals.size() == 0) {
      return ConstantInt::create(*ir, ir->getIntType(), 0);
    }
    Any val = solveConstExp(initVals[0]->constExp()->exp());
    // TODO: float
    return ConstantInt::create(*ir, ir->getIntType(), val.as<int>());
  }
  int initValIndex = 0;
  int currentDim = dims.front();
  dims.pop_front();
  for (int i = 0; i < currentDim; i += 1) {
    if (initVals[initValIndex]->L_BRACE()) {
      Constant *element =
          solveConstInit(initVals[initValIndex++]->constInitVal(), dims);
      arrayElements.push_back(element);
    } else {
      int numOfElement = 1;
      for (auto dim = dims.begin(); dim != dims.end(); dim++) {
        numOfElement *= *dim;
      }
      std::vector<SysYParser::ConstInitValContext *> constInitVals;
      for (int i = 0; i < numOfElement; i++) {
        constInitVals.push_back(initVals[initValIndex++]);
      }
      Constant *element = solveConstInit(constInitVals, dims);
      arrayElements.push_back(element);
    }
  }
  return ConstantArray::create(*ir, ir->getPtrType(), arrayElements);
}
/**
 * This function handle const init value as a scalar.
 * @param ctx the context of the constant's init value
 * @return The value of the constant's init value
 */
Any IRGenerator::visitConstInitVal(SysYParser::ConstInitValContext *ctx) {
  std::vector<Constant *> constVals;
  std::vector<SysYParser::ConstInitValContext *> initVals = ctx->constInitVal();
  if (auto constExp = ctx->constExp()) {
    Any initVal = solveConstExp(constExp->exp());
    Constant *constant = nullptr;
    if (initVal.is<int>()) {
      constant = ConstantInt::create(*ir, ir->getIntType(), initVal.as<int>());
    } else if (initVal.is<float>()) {
      constant = ConstantFloat::create(*ir, initVal.as<float>());
    } else {
      nnvm_unreachable("Should not reach here");
    }
    return constant;
  }
  // TODO: handle {1,2,3...} as 1, like what in gcc.
  nnvm_unreachable("Not implemented");
  return constVals;
}

/**
 * This function defines constant value
 * @param ctx The constant definition(context)
 * @param btype Type of the constant(context)
 */
Any IRGenerator::constDef(SysYParser::ConstDefContext *ctx,
                          SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = btype->accept(this);
  string symbolName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: error
    return Symbol::none();
  }
  for (int i = 0; i < ctx->constExp().size(); i += 1) {
    Any nrElements = solveConstExp(ctx->constExp()[i]->exp());
    assert(nrElements.is<int>());
    symbolType =
        SymbolType::getArrayTy(nrElements.as<int>(), symbolType, symbolTable);
  }
  Type *irType = getIRType(symbolType, btype);
  Constant *constVal = nullptr;
  if (irType->getClass() == Type::Integer) {
    Any initVal = solveConstExp(ctx->constInitVal()->constExp()->exp());
    assert(initVal.is<int>());
    constVal = ConstantInt::create(*ir, irType, initVal.as<int>());
  } else if (irType->getClass() == Type::Float) {
    Any initVal = solveConstExp(ctx->constInitVal()->constExp()->exp());
    assert(initVal.is<float>());
    constVal = ConstantFloat::create(*ir, initVal.as<float>());
  } else {
    std::list<int> dims;
    for (int i = 0; i < ctx->constExp().size(); i += 1) {
      // TODO: report error here
      dims.push_back(solveConstExp(ctx->constExp()[i]->exp()).as<int>());
    }
    constVal = solveConstInit(ctx->constInitVal()->constInitVal(), dims);
  }
  symbolTable.create(symbolName, symbolType, constVal);
  return Symbol::none();
}

Any IRGenerator::visitVarDecl(SysYParser::VarDeclContext *ctx) {
  for (auto ctxVarDef : ctx->varDef()) {
    varDef(ctxVarDef, ctx->btype());
  }
  return Symbol::none();
}

Any IRGenerator::varDef(SysYParser::VarDefContext *ctx,
                        SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = btype->accept(this);
  string symbolName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: error
    return Symbol::none();
  }
  for (size_t i = 0; i < ctx->constExp().size(); i += 1) {
    Any nrElements = solveConstExp(ctx->constExp()[i]->exp());
    assert(nrElements.is<int>());
    symbolType =
        SymbolType::getArrayTy(nrElements.as<int>(), symbolType, symbolTable);
  }
  Type *irType = getIRType(symbolType, btype);
  Value *irVal = nullptr;
  if (irType->getClass() == Type::Integer) {
    if (symbolTable.isGlobal()) {
      Constant *constInitVal = nullptr;
      if (ctx->initVal()) {
        int intVal =
            solveConstExp(ctx->initVal()->exp()).is<float>()
                ? (int)(solveConstExp(ctx->initVal()->exp()).as<float>())
                : solveConstExp(ctx->initVal()->exp()).as<int>();
        constInitVal = ConstantInt::create(*ir, ir->getIntType(), intVal);
      } else {
        constInitVal = constZeroInt;
      }
      GlobalVariable *globalVar = new GlobalVariable(*ir, constInitVal);
      globalVar->setName(symbolName);
      ir->addGlobalVar(globalVar);
      irVal = globalVar;
    } else {
      Value *initVal = nullptr;
      irVal = builder.buildStack(irType, symbolName);
      if (ctx->initVal()) {
        Symbol initSymbol = ctx->initVal()->exp()->accept(this).as<Symbol>();
        Value *initVal = initSymbol.entity;
        if (initSymbol.symbolType->isFloat()) { // need F2I
          // initVal = builder.buildInst(InstID::F2SI, {initVal},
          // ir->getFloatType());
        }
        builder.buildStore(initVal, irVal);
      }
    }
  } else if (irType->getClass() == Type::Float) {
    if (symbolTable.isGlobal()) {
      Constant *constInitVal = constZeroFloat;
      if (ctx->initVal()) {
        float floatVal =
            solveConstExp(ctx->initVal()->exp()).is<int>()
                ? (float)(solveConstExp(ctx->initVal()->exp()).as<int>())
                : solveConstExp(ctx->initVal()->exp()).as<float>();
        constInitVal = ConstantFloat::create(*ir, floatVal);
      } 
      GlobalVariable *globalVar = new GlobalVariable(*ir, constInitVal);
      globalVar->setName(symbolName);
      ir->addGlobalVar(globalVar);
      irVal = globalVar;
    } else {
      irVal = builder.buildStack(irType, symbolName);
      if (ctx->initVal()) {
        Symbol initSymbol = ctx->initVal()->exp()->accept(this).as<Symbol>();
        Value *initVal = initSymbol.entity;
        if (initSymbol.symbolType->isInt()) { // need F2I
          initVal =
              builder.buildInst(InstID::SI2F, {initVal}, ir->getIntType());
        }
        builder.buildStore(initVal, irVal);
      }
    }
  } else {
    // TODO: array
  }
  symbolTable.create(symbolName, symbolType, irVal);
  return Symbol::none();
}

Any IRGenerator::visitBlock(SysYParser::BlockContext *ctx) {
  symbolTable.enterScope();
  for (auto stmtCtx : ctx->blockItem()) {
    stmtCtx->accept(this);
  }
  symbolTable.exitScope();
  return Symbol::none();
}

Any IRGenerator::visitFuncDef(SysYParser::FuncDefContext *ctx) {
  string funcName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(funcName)) {
    // TODO: error
    return Symbol::none();
  }

  // TODO: some checks
  Function *func = new Function(ir, funcName);

  ir->addFunction(func);
  SymbolType *returnType = ctx->funcType()->accept(this);

  vector<SymbolType *> argsType;

  if (ctx->funcFParams()) {
    for (auto paramCtx : ctx->funcFParams()->funcFParam()) {
      SymbolType *symbolTy = paramCtx->btype()->accept(this);
      for (int i = 0; i < paramCtx->L_BRACKT().size(); i++) {
        if (i == 0)
          symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
        else {
          // TODO: check---calculate the number of element
          Any numOfElement = solveConstExp(paramCtx->exp()[i]);
          assert(numOfElement.is<int>());
          symbolTy =
              SymbolType::getArrayTy(numOfElement, symbolTy, symbolTable);
        }
      }
      argsType.push_back(symbolTy);
    }
  }

  currentFunc = symbolTable.create(
      funcName, SymbolType::getFuncTy(returnType, argsType, symbolTable), func);

  func->setReturnType(getIRType(ctx->funcType()));
  BasicBlock *Entry = new BasicBlock(func, "entry");
  builder.setInsertPoint(Entry->end());

  currentBB = Entry;

  symbolTable.enterScope();

  if (ctx->funcFParams()) {
    for (auto paramCtx : ctx->funcFParams()->funcFParam())
      paramCtx->accept(this);
  }

  // Demote args into stack.
  for (size_t i = 0; i < func->getArguments().size(); i++) {
    auto *arg = func->getArguments()[i];
    auto *stack =
        symbolTable
            .lookup(ctx->funcFParams()->funcFParam(i)->IDENT()->getText())
            ->entity;
    builder.buildStore(arg, stack);
  }

  for (auto stmtCtx : ctx->block()->blockItem())
    stmtCtx->accept(this);
    
  symbolTable.exitScope();

  if (func->getReturnType()->isVoid() &&
      !builder.getCurrentBB()->getTerminator())
    builder.buildRet();

  return Symbol::none();
}

Any IRGenerator::visitFuncFParam(SysYParser::FuncFParamContext *ctx) {
  string paramName = ctx->IDENT()->getText();
  ;
  if (symbolTable.lookupInCurrentScope(paramName)) {
    // TODO: error
    return Symbol::none();
  }

  SymbolType *symbolTy = ctx->btype()->accept(this);
  for (size_t i = 0; i < ctx->L_BRACKT().size(); i++) {
    if (i == 0)
      symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
    else {
      // TODO: check---calculate the number of element
      Any numOfElement = solveConstExp(ctx->exp()[i - 1]);
      assert(numOfElement.is<int>());
      symbolTy = SymbolType::getArrayTy(numOfElement, symbolTy, symbolTable);
    }
  }
  Type *irTy = getIRType(symbolTy, ctx->btype());
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
      // TODO: error, cast
      return Symbol::none();
    }
    return Symbol{builder.buildStore(rhs.entity, lhs.entity), nullptr};
  } else if (ctx->IF()) {
    Symbol cond = ctx->cond()->accept(this);

    if (!cond)
      return Symbol::none();

    cond.entity = builder.buildICmpNEZero(cond.entity);

    BasicBlock *thenBB = new BasicBlock(builder.getCurrentFunc(), "then");
    BasicBlock *exitBB = new BasicBlock(builder.getCurrentFunc(), "if.exit");
    BasicBlock *elseBB;

    if (ctx->ELSE()) {
      elseBB = new BasicBlock(builder.getCurrentFunc(), "else");
      builder.buildBr(cond.entity, thenBB, elseBB);
    } else {
      builder.buildBr(cond.entity, thenBB, exitBB);
    }

    builder.setInsertPoint(thenBB->end());
    ctx->stmt(0)->accept(this);
    if (!builder.getCurrentBB()->getTerminator())
      builder.buildBr(exitBB);

    if (ctx->ELSE()) {
      builder.setInsertPoint(elseBB->end());
      ctx->stmt(1)->accept(this);
      if (!builder.getCurrentBB()->getTerminator())
        builder.buildBr(exitBB);
    }

    builder.setInsertPoint(exitBB->end());
    return Symbol::none();
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
  } else if (ctx->block()) {
    return ctx->block()->accept(this);
  } else if (ctx->exp()) {
    return ctx->exp()->accept(this);
  } else if (ctx->CONTINUE()) {
    builder.buildBr(whileLoops.top().condBB);
  } else if (ctx->WHILE()) {
    if (!ctx->cond()) {
      // TODO: error
      return Symbol::none();
    }
    BasicBlock *whileCond =
        new BasicBlock(cast<Function>(currentFunc->entity), "while.cond");
    BasicBlock *whileBody =
        new BasicBlock(cast<Function>(currentFunc->entity), "while.body");
    BasicBlock *whileExit =
        new BasicBlock(cast<Function>(currentFunc->entity), "while.exit");

    builder.buildBr(whileCond);
    // While Conditon
    builder.setInsertPoint(whileCond->end());
    Symbol cond = ctx->cond()->accept(this);
    builder.buildBr(cond.entity, whileBody, whileExit);

    // While Body
    builder.setInsertPoint(whileBody->end());
    whileLoops.push({whileCond, whileExit});
    ctx->stmt(0)->accept(this);
    whileLoops.pop();
    if (!builder.getCurrentBB()->getTerminator())
      builder.buildBr(whileCond);

    builder.setInsertPoint(whileExit->end());
    return Symbol::none();
  } else if (ctx->BREAK()) {
    builder.buildBr(whileLoops.top().afterBB);
  }
  return Symbol::none();
}

Any IRGenerator::visitCond(SysYParser::CondContext *ctx) {
  if (ctx->exp()) {
    Symbol exp = ctx->exp()->accept(this);
    return exp;
  } else if (ctx->AND()) {

    Symbol exp1 = ctx->cond(0)->accept(this);
    if (!exp1)
      return Symbol::none();
    Symbol cond1;
    if (exp1.symbolType->isInt())
      cond1 = Symbol{
          builder.buildICmp(ICmpInst::NE, exp1.entity,
                            ConstantInt::create(*ir, ir->getIntType(), 0)),
          SymbolType ::getBoolTy()};
    else
      nnvm_unreachable("Unimplemented FCmp")

          Symbol exp2 = ctx->cond(1)->accept(this);
    if (!exp2)
      return Symbol::none();
    Symbol cond2;
    if (exp2.symbolType->isInt())
      cond2 = Symbol{
          builder.buildICmp(ICmpInst::NE, exp2.entity,
                            ConstantInt::create(*ir, ir->getIntType(), 0)),
          SymbolType::getBoolTy()};

  } else if (ctx->OR()) {

  } else {
    Symbol exp1 = ctx->cond(0)->accept(this);
    if (!exp1)
      return Symbol::none();

    Symbol exp2 = ctx->cond(1)->accept(this);
    if (!exp2)
      return Symbol::none();

    if (ctx->EQ())
      return Symbol{builder.buildICmp(ICmpInst::EQ, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else if (ctx->NEQ())
      return Symbol{builder.buildICmp(ICmpInst::NE, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else if (ctx->LT())
      return Symbol{builder.buildICmp(ICmpInst::SLT, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else if (ctx->GT())
      return Symbol{builder.buildICmp(ICmpInst::SGT, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else if (ctx->LE())
      return Symbol{builder.buildICmp(ICmpInst::SLE, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else if (ctx->GE())
      return Symbol{builder.buildICmp(ICmpInst::SGE, exp1.entity, exp2.entity),
                    SymbolType::getBoolTy()};
    else
      return Symbol::none();
  }
  nnvm_unreachable("Not implemented");
}

Any IRGenerator::visitCall(SysYParser::CallContext *ctx) {
  auto calleeName = ctx->IDENT()->getText();
  Symbol *calleeSymbol = symbolTable.lookup(calleeName);
  if (!calleeSymbol)
    // TODO: report no matching function!!
    return Symbol::none();

  Function *callee = cast<Function>(calleeSymbol->entity);
  std::vector<Value *> args;

  if (ctx->funcRParams()) {
    for (auto *paramCtx : ctx->funcRParams()->param()) {
      Symbol paramSymbol = paramCtx->accept(this);
      if (!paramSymbol)
        return Symbol::none();
      args.push_back(paramSymbol.entity);
    }
  }

  return Symbol(builder.buildCall(callee, args),
                calleeSymbol->symbolType->containedTy);
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
    nnvm_unreachable("Not support transform symbol type");
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
  // TODO: error
  if (!lhs)
    return nullptr;
  Symbol rhs = ctx->exp(1)->accept(this);
  if (!rhs)
    return nullptr;

  // TODO: error
  if (!rhs.symbolType->isIdentical(*lhs.symbolType)) {
    return nullptr;
  }
  Value *val = nullptr;
  if (ctx->PLUS()) {
    if (rhs.symbolType->isInt()) {
      val =
          builder.buildBinOp<AddInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FAddInst>(lhs.entity, rhs.entity,
                                         ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MINUS()) {
    if (rhs.symbolType->isInt()) {
      val =
          builder.buildBinOp<SubInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FSubInst>(lhs.entity, rhs.entity,
                                         ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MUL()) {
    if (rhs.symbolType->isInt()) {
      val =
          builder.buildBinOp<MulInst>(lhs.entity, rhs.entity, ir->getIntType());
    } else {
      val = builder.buildBinOp<FMulInst>(lhs.entity, rhs.entity,
                                         ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->DIV()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<SDivInst>(lhs.entity, rhs.entity,
                                         ir->getIntType());
    } else {
      val = builder.buildBinOp<FDivInst>(lhs.entity, rhs.entity,
                                         ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->MOD()) {
    if (rhs.symbolType->isInt()) {
      val = builder.buildBinOp<SRemInst>(lhs.entity, rhs.entity,
                                         ir->getIntType());
    } else {
      val = builder.buildBinOp<FRemInst>(lhs.entity, rhs.entity,
                                         ir->getFloatType());
    }
    return Symbol{val, lhs.symbolType};
  }
  nnvm_unreachable("Should not reach here!");
}

Any IRGenerator::expUnaryOp(SysYParser::ExpContext *ctx) {
  assert(ctx->exp().size() == 1);
  Symbol operand = ctx->exp()[0]->accept(this);
  if (!operand) {
    return nullptr;
  }
  Value *val = operand.entity;
  // TODO: unary op
  if (ctx->unaryOp()->PLUS())
    return operand;

  if (ctx->unaryOp()->MINUS()) {
    if (operand.symbolType->isInt()) {
      return Symbol{builder.buildBinOp<SubInst>(
                        builder.buildZero(val->getType()), val, val->getType()),
                    operand.symbolType};
    } else {
      nnvm_unreachable(
          "Not sure how to give the negative value of the float value");
    }
  }

  if (ctx->unaryOp()->NOT()) {
    Value *equalToZero =
        builder.buildICmp(ICmpInst::EQ, val, builder.buildZero(val->getType()));
    Value *zext = builder.buildZExt(equalToZero, val->getType(),
                                    val->getName() + ".zext");
    return Symbol{zext, operand.symbolType};
  }
  nnvm_unreachable("UnaryOp Not implemented!");
}

Any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
  if (ctx->lVal()) {
    Symbol lVal = ctx->lVal()->accept(this);
    if (!lVal)
      // TODO: error
      return nullptr;
    if (auto constVal = dyn_cast<Constant>(lVal.entity)) {
      return lVal;
    }
    return Symbol{builder.buildLoad(lVal.entity, toIRType(lVal.symbolType),
                                    lVal.entity->getName() + ".load"),
                  lVal.symbolType};
  }

  if (ctx->L_PAREN())
    return ctx->exp(0)->accept(this);

  if (ctx->PLUS() || ctx->MINUS() || ctx->DIV() || ctx->MOD() || ctx->MUL())
    return expBinOp(ctx);

  if (ctx->unaryOp())
    return expUnaryOp(ctx);

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
