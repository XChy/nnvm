#include "IRGenerator.h"
#include "Frontend/Builtin.h"
#include "Frontend/Symbol.h"
#include "IR/BasicBlock.h"
#include "IR/Constant.h"
#include "IR/GlobalVariable.h"
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
  // Global symbol table starts here.
  symbolTable.enterScope();
  addBuiltinFunctions(*ir, symbolTable);
  visitChildren(ctx);
  // Global symbol table ends here.
  symbolTable.exitScope();
  return Any();
}

Type *IRGenerator::getIRType(SymbolType *symTy, SysYParser::BtypeContext *ctx) {
  return symTy->isArray() ? ir->getPtrType() : getIRType(ctx);
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
  nnvm_unreachable("Not supported such type");
}

/**
 * This function is used to solve the constant lval
 * @param ctx the context of the lval
 * @return The value of the lval, type is int or float
 */
Any IRGenerator::solveConstLval(SysYParser::LValContext *ctx) {
  std::vector<nnvm::SysYParser::ExpContext *> indexs = ctx->exp();
  Constant *valConstant;

  if (auto *globalConstant = dyn_cast<GlobalVariable>(
          symbolTable.lookup(ctx->IDENT()->getText())->entity))
    valConstant = globalConstant->getInitVal();
  else
    valConstant =
        cast<Constant>(symbolTable.lookup(ctx->IDENT()->getText())->entity);

  if (auto constInt = dyn_cast<ConstantInt>(valConstant))
    return (int)constInt->getValue();

  if (auto constFloat = dyn_cast<ConstantFloat>(valConstant))
    return constFloat->getValue();

  if (auto constArray = dyn_cast<ConstantArray>(valConstant)) {
    size_t i = 0;
    for (; i < indexs.size() - 1; i++) {
      Any index = solveConstExp(indexs[i]);
      assert(any_is<int>(index));
      // TODO: Report invalid index error.
      if (i < indexs.size() - 1) {
        constArray =
            cast<ConstantArray>(constArray->getValue()[any_as<int>(index)]);
      } else {
        valConstant = constArray->getValue()[any_as<int>(index)];
        if (auto constInt = dyn_cast<ConstantInt>(valConstant)) {
          return (int)constInt->getValue();
        }
        if (auto constFloat = dyn_cast<ConstantFloat>(valConstant)) {
          return constFloat->getValue();
        }
      }
    }
  }

  nnvm_unimpl();
}

/**
 * This function is used to convert the value from float to int, or reversely.
 * @param value inner type is int or float
 */
template <typename MayFrom, typename To>
static inline To castConstExp(Any value) {
  return any_is<MayFrom>(value) ? (To)(any_as<MayFrom>(value))
                                : any_as<To>(value);
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

    if (ctx->unaryOp()) {
      Any operand = solveConstExp(ctx->exp()[0]);
      if (ctx->unaryOp()->PLUS())
        return operand;

      if (any_is<float>(operand)) {
        if (ctx->unaryOp()->NOT())
          return (int)(any_as<float>(operand) != 0);
        if (ctx->unaryOp()->MINUS())
          return -any_as<float>(operand);
      }

      if (any_is<int>(operand)) {
        if (ctx->unaryOp()->NOT())
          return (int)(any_as<int>(operand) != 0);
        if (ctx->unaryOp()->MINUS())
          return -any_as<int>(operand);
      }

      nnvm_unimpl();
    }

    if (auto lvalCtx = ctx->lVal()) {
      return solveConstLval(lvalCtx);
    }
    nnvm_unreachable("Impossible to reach here");
  }

  Any lhsAny = solveConstExp(ctx->exp()[0]);
  Any rhsAny = solveConstExp(ctx->exp()[1]);
  if (any_is<float>(lhsAny) || any_is<float>(rhsAny)) {
    float lhs = castConstExp<int, float>(lhsAny);
    float rhs = castConstExp<int, float>(rhsAny);
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
    if (ctx->MOD()) {
      nnvm_unimpl();
    }
    nnvm_unreachable("Impossible to reach here");
  } else if (any_is<int>(lhsAny) && any_is<int>(rhsAny)) {
    int lhs = any_as<int>(lhsAny);
    int rhs = any_as<int>(rhsAny);
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
    if (ctx->MOD()) {
      return lhs % rhs;
    }
    nnvm_unreachable("Impossible to reach here");
  }
  nnvm_unreachable("Impossible to reach here");
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
    if (initVals.size() == 0)
      return ConstantInt::create(*ir, ir->getIntType(), 0);

    Any val = solveConstExp(initVals[0]->constExp()->exp());
    // TODO: float
    return ConstantInt::create(*ir, ir->getIntType(), any_as<int>(val));
  }
  int initValIndex = 0;
  int currentDim = dims.front();
  dims.pop_front();
  for (int i = 0; i < currentDim; i += 1) {
    if (initVals[initValIndex]->L_BRACE()) {
      Constant *element = any_as<Constant *>(
          solveConstInit(initVals[initValIndex++]->constInitVal(), dims));
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
      Constant *element =
          any_as<Constant *>(solveConstInit(constInitVals, dims));
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
    if (any_is<int>(initVal)) {
      constant =
          ConstantInt::create(*ir, ir->getIntType(), any_as<int>(initVal));
    } else if (any_is<float>(initVal)) {
      constant = ConstantFloat::create(*ir, any_as<float>(initVal));
    } else {
      nnvm_unreachable("Should not reach here");
    }
    return constant;
  }
  // TODO: handle {1,2,3...} as 1, like what in gcc.
  nnvm_unimpl();
  return constVals;
}

/**
 * This function defines constant value
 * @param ctx The constant definition(context)
 * @param btype Type of the constant(context)
 */
Any IRGenerator::constDef(SysYParser::ConstDefContext *ctx,
                          SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = any_as<SymbolType *>(btype->accept(this));
  string symbolName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: error
    return Symbol::none();
  }

  auto constExps = ctx->constExp();
  for (auto it = constExps.rbegin(); it != constExps.rend(); it++) {
    Any nrElements = solveConstExp((*it)->exp());
    assert(any_is<int>(nrElements));
    symbolType = SymbolType::getArrayTy(any_as<int>(nrElements), symbolType,
                                        symbolTable);
  }

  Type *irType = getIRType(symbolType, btype);
  Constant *constVal = nullptr;

  if (irType->isInteger()) {
    Any initVal = solveConstExp(ctx->constInitVal()->constExp()->exp());
    initVal = castConstExp<float, int>(initVal);
    constVal = ConstantInt::create(*ir, irType, any_as<int>(initVal));
  } else if (irType->isFloat()) {
    Any initVal = solveConstExp(ctx->constInitVal()->constExp()->exp());
    initVal = castConstExp<int, float>(initVal);
    constVal = ConstantFloat::create(*ir, any_as<float>(initVal));
  } else if (symbolType->isArray()) {
    constVal = fetchFlatElementsFrom(ctx->constInitVal(), symbolType);

    if (symbolTable.isGlobal()) {
      GlobalVariable *global = new GlobalVariable(*ir, constVal);
      global->setName(ctx->IDENT()->getText());
      return symbolTable.create(symbolName, symbolType, global);
    } else {
      Type *irElementType = toIRType(symbolType->getInnerMost());
      Value *arrayStack =
          builder.buildStack(irElementType, symbolType->getTotalNumOfElements(),
                             ctx->IDENT()->getText());
      uint64_t offset = 0;
      for (Constant *stored : cast<ConstantArray>(constVal)->getValue()) {
        Constant *offsetValue =
            ConstantInt::create(*ir, ir->getIntType(), offset);
        auto *pointer = builder.buildBinOp<PtrAddInst>(
            arrayStack, offsetValue, ir->getPtrType(), "arr.index");
        builder.buildStore(stored, pointer);
        offset += irElementType->getStoredBytes();
      }
      return symbolTable.create(symbolName, symbolType, arrayStack);
    }
  }

  if (symbolTable.isGlobal()) {
    GlobalVariable *global = new GlobalVariable(*ir, constVal);
    global->setName(ctx->IDENT()->getText());
    return symbolTable.create(symbolName, symbolType, global);
  } else {
    return symbolTable.create(symbolName, symbolType, constVal);
  }
}

Any IRGenerator::visitVarDecl(SysYParser::VarDeclContext *ctx) {
  for (auto ctxVarDef : ctx->varDef())
    varDef(ctxVarDef, ctx->btype());

  return Symbol::none();
}

bool IRGenerator::solveInit(SysYParser::InitValContext *initVal,
                            SymbolType *currentType, Type *irElementType,
                            std::vector<Value *> &output) {
  if (initVal->exp()) {
    Symbol exp = any_as<Symbol>(initVal->exp()->accept(this));
    if (currentType->isArray()) {
      exp = genImplicitCast(exp, currentType->getInnerMost());
    } else {
      exp = genImplicitCast(exp, currentType);
    }
    // TODO: make it clear
    if (!exp)
      return false;
    output.push_back(exp.entity);
    return true;
  }

  size_t numBefore = output.size();
  if (currentType->isArray()) {
    int initValIndex = 0;

    if (numBefore % currentType->getTotalNumOfElements() != 0) {
      solveInit(initVal, currentType->containedTy, irElementType, output);
      return true;
    }

    while (initValIndex < currentType->getTotalNumOfElements() &&
           output.size() - numBefore < currentType->getTotalNumOfElements()) {
      if (initValIndex >= initVal->initVal().size()) {
        output.push_back(builder.getZero(irElementType));
      } else {
        bool success =
            solveInit(initVal->initVal(initValIndex), currentType->containedTy,
                      irElementType, output);
        if (!success)
          return false;
      }

      initValIndex++;
    }
    return true;
  }

  nnvm_unimpl();
}

bool IRGenerator::fetchElementsFrom(SysYParser::InitValContext *initVal,
                                    SymbolType *currentType,
                                    Type *irElementType,
                                    std::vector<Constant *> &output) {

  if (initVal->exp()) {
    Constant *constant;
    Any value = solveConstExp(initVal->exp());
    if (any_is<int>(value))
      constant = ConstantInt::create(*ir, ir->getIntType(), any_as<int>(value));
    else if (any_is<float>(value))
      constant = ConstantFloat::create(*ir, any_as<float>(value));
    else
      nnvm_unimpl();

    // TODO: non-constant? Float to int or int to float?
    output.push_back(constant);
    return true;
  }

  if (currentType->isArray()) {
    int initValIndex = 0;
    uint oldNum = output.size();
    if (oldNum % currentType->getTotalNumOfElements() != 0) {
      fetchElementsFrom(initVal, currentType->containedTy, irElementType,
                        output);
      return true;
    }
    while (initValIndex < currentType->getTotalNumOfElements() &&
           output.size() - oldNum < currentType->getTotalNumOfElements()) {
      if (initValIndex >= initVal->initVal().size()) {
        output.push_back(builder.getZero(irElementType));
      } else {
        bool success =
            fetchElementsFrom(initVal->initVal(initValIndex),
                              currentType->containedTy, irElementType, output);
        if (!success)
          return false;
      }

      initValIndex++;
    }
    return true;
  }

  nnvm_unimpl();
}

Constant *IRGenerator::fetchFlatElementsFrom(SysYParser::InitValContext *ctx,
                                             SymbolType *type) {
  SymbolType *elementTy = type->getInnerMost();
  uint totalNumOfElements = type->getTotalNumOfElements();
  Type *arrayType = ir->getArrayType(toIRType(elementTy), totalNumOfElements);

  if (!ctx || ctx->initVal().empty())
    return ConstantAllZeros::create(*ir, arrayType);

  std::vector<Constant *> initValList;
  initValList.reserve(totalNumOfElements);

  fetchElementsFrom(ctx, type, toIRType(elementTy), initValList);
  return ConstantArray::create(*ir, arrayType, initValList);
}

bool IRGenerator::fetchElementsFrom(SysYParser::ConstInitValContext *initVal,
                                    SymbolType *currentType,
                                    Type *irElementType,
                                    std::vector<Constant *> &output) {

  if (initVal->constExp()) {
    Symbol exp = any_as<Symbol>(initVal->constExp()->accept(this));
    if (!exp)
      return false;
    // TODO: non-constant? Float to int or int to float?
    output.push_back(cast<Constant>(exp.entity));
    return true;
  }

  if (currentType->isArray()) {
    int initValIndex = 0;
    size_t oldNum = output.size();
    if (oldNum % currentType->getTotalNumOfElements() != 0) {
      fetchElementsFrom(initVal, currentType->containedTy, irElementType,
                        output);
      return true;
    }
    while (initValIndex < currentType->getTotalNumOfElements() &&
           output.size() - oldNum < currentType->getTotalNumOfElements()) {
      if (initValIndex >= initVal->constInitVal().size()) {
        output.push_back(builder.getZero(irElementType));
      } else {
        bool success =
            fetchElementsFrom(initVal->constInitVal(initValIndex),
                              currentType->containedTy, irElementType, output);
        if (!success)
          return false;
      }

      initValIndex++;
    }
    return true;
  }

  nnvm_unimpl();
}

Constant *
IRGenerator::fetchFlatElementsFrom(SysYParser::ConstInitValContext *ctx,
                                   SymbolType *type) {
  SymbolType *elementTy = type->getInnerMost();
  uint totalNumOfElements = type->getTotalNumOfElements();
  Type *arrayType = ir->getArrayType(toIRType(elementTy), totalNumOfElements);

  if (!ctx || ctx->constInitVal().empty())
    return ConstantAllZeros::create(*ir, arrayType);

  std::vector<Constant *> initValList;
  initValList.reserve(totalNumOfElements);

  fetchElementsFrom(ctx, type, toIRType(elementTy), initValList);
  return ConstantArray::create(*ir, arrayType, initValList);
}

void IRGenerator::arrInitRoll(uint &valueCount, uint &offset,
                              Value *currentValue, Value *irVal,
                              Type *irElementType) {
  if (valueCount > 10) {
    // roll up the same values' init
    BasicBlock *condBB =
        new BasicBlock(cast<Function>(currentFunc->entity), "init.cond");
    BasicBlock *initBB =
        new BasicBlock(cast<Function>(currentFunc->entity), "init");
    BasicBlock *exitBB =
        new BasicBlock(cast<Function>(currentFunc->entity), "init.exit");

    // init
    Value *cnt_ptr = builder.buildStack(ir->getIntType(), "cnt_ptr");
    builder.buildStore(createConstInt(valueCount), cnt_ptr);
    builder.buildBr(condBB);

    // cond
    builder.setInsertPoint(condBB->end());
    Value *cnt = builder.buildLoad(cnt_ptr, ir->getIntType(), "cnt");
    Value *cond = builder.buildICmpNEZero(cnt, "cond");
    builder.buildBr(cond, initBB, exitBB);

    // init body (Init from the end of the array)
    builder.setInsertPoint(initBB->end());
    cnt = builder.buildLoad(cnt_ptr, ir->getIntType(), "cnt");
    cnt = builder.buildBinOp<SubInst>(cnt, createConstInt(1), ir->getIntType(),
                                      "cnt.dec");
    builder.buildStore(cnt, cnt_ptr);
    Value *currentBase = createConstInt(offset);
    Value *currentOff = builder.buildBinOp<MulInst>(
        cnt, createConstInt(irElementType->getStoredBytes()), ir->getIntType(),
        "offset");
    Value *offsetValue = builder.buildBinOp<AddInst>(
        currentBase, currentOff, ir->getPtrType(), "arr.index");
    auto *pointer = builder.buildBinOp<PtrAddInst>(
        irVal, offsetValue, ir->getPtrType(), "arr.index");
    builder.buildStore(currentValue, pointer);
    builder.buildBr(condBB);

    // exit
    builder.setInsertPoint(exitBB->end());

    offset += irElementType->getStoredBytes() * valueCount;
  } else {
    while (valueCount--) {
      Constant *offsetValue = createConstInt(offset);
      auto *pointer = builder.buildBinOp<PtrAddInst>(
          irVal, offsetValue, ir->getPtrType(), "arr.index");
      builder.buildStore(currentValue, pointer);
      offset += irElementType->getStoredBytes();
    }
  }
}

Any IRGenerator::varDef(SysYParser::VarDefContext *ctx,
                        SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = any_as<SymbolType *>(btype->accept(this));
  SymbolType *elementType = symbolType;
  string symbolName = ctx->IDENT()->getText();

  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: error
    return Symbol::none();
  }

  auto constExps = ctx->constExp();
  for (auto it = constExps.rbegin(); it != constExps.rend(); it++) {
    Any nrElements = solveConstExp((*it)->exp());
    assert(any_is<int>(nrElements));
    symbolType = SymbolType::getArrayTy(any_as<int>(nrElements), symbolType,
                                        symbolTable);
  }

  Type *irType = getIRType(symbolType, btype);
  Type *irElementType = getIRType(elementType, btype);
  Value *irVal = nullptr;
  if (irType->isInteger()) {
    if (symbolTable.isGlobal()) {
      int intVal = 0;
      if (ctx->initVal()) {
        Any solvedVal = solveConstExp(ctx->initVal()->exp());
        intVal = castConstExp<float, int>(solvedVal);
      }

      Constant *initVal = ConstantInt::create(*ir, ir->getIntType(), intVal);
      GlobalVariable *globalVar = new GlobalVariable(*ir, initVal);
      globalVar->setName(symbolName);
      irVal = globalVar;
    } else {
      irVal = builder.buildStack(irType, symbolName);
      if (ctx->initVal()) {
        Symbol initSymbol = any_as<Symbol>(ctx->initVal()->exp()->accept(this));
        initSymbol = genImplicitCast(initSymbol, symbolType);
        builder.buildStore(initSymbol.entity, irVal);
      }
    }
  } else if (irType->isFloat()) {
    if (symbolTable.isGlobal()) {
      float floatVal = 0.0;
      if (ctx->initVal()) {
        Any solvedVal = solveConstExp(ctx->initVal()->exp());
        floatVal = castConstExp<int, float>(solvedVal);
      }
      GlobalVariable *globalVar =
          new GlobalVariable(*ir, createConstFloat(floatVal));
      globalVar->setName(symbolName);
      irVal = globalVar;
    } else {
      irVal = builder.buildStack(irType, symbolName);
      if (ctx->initVal()) {
        Symbol initSymbol = any_as<Symbol>(ctx->initVal()->exp()->accept(this));
        initSymbol = genImplicitCast(initSymbol, symbolType);
        builder.buildStore(initSymbol.entity, irVal);
      }
    }
  } else if (symbolType->isArray()) {
    if (symbolTable.isGlobal()) {
      GlobalVariable *globalVar;
      Constant *initVal = nullptr;
      initVal = fetchFlatElementsFrom(ctx->initVal(), symbolType);
      globalVar = new GlobalVariable(*ir, initVal);
      globalVar->setName(symbolName);
      irVal = globalVar;
    } else {
      irVal = builder.buildStack(
          irElementType, symbolType->getTotalNumOfElements(), symbolName);
      Type *irElementType = toIRType(symbolType->getInnerMost());

      if (ctx->initVal()) {
        std::vector<Value *> values;
        if (!solveInit(ctx->initVal(), symbolType, irElementType, values))
          return Symbol::none();
        uint offset = 0;
        // we put same values together
        Value *currentValue = nullptr;
        uint valueCount = 0;
        for (Value *stored : values) {
          if (valueCount == 0 || currentValue == stored) {
            currentValue = stored;
            valueCount++;
          } else {
            arrInitRoll(valueCount, offset, currentValue, irVal, irElementType);
            currentValue = stored;
            valueCount = 1;
          }
        }
        if (valueCount > 0) {
          arrInitRoll(valueCount, offset, currentValue, irVal, irElementType);
        }
      }
    }
  } else {
    nnvm_unimpl();
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
  SymbolType *returnType = any_as<SymbolType *>(ctx->funcType()->accept(this));

  vector<SymbolType *> argsType;

  if (ctx->funcFParams()) {
    for (auto paramCtx : ctx->funcFParams()->funcFParam()) {
      SymbolType *symbolTy =
          any_as<SymbolType *>(paramCtx->btype()->accept(this));
      for (int i = paramCtx->L_BRACKT().size() - 1; i >= 0; i--) {
        if (i == 0)
          symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
        else {
          Any numOfElement = solveConstExp(paramCtx->exp()[i - 1]);
          assert(any_is<int>(numOfElement));
          symbolTy = SymbolType::getArrayTy(any_as<int>(numOfElement), symbolTy,
                                            symbolTable);
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
    auto *argSymbol = symbolTable.lookup(
        ctx->funcFParams()->funcFParam(i)->IDENT()->getText());

    if (argSymbol->symbolType->isArray())
      continue;

    auto *arg = func->getArguments()[i];
    auto *stack = argSymbol->entity;
    builder.buildStore(arg, stack);
  }

  for (auto stmtCtx : ctx->block()->blockItem())
    stmtCtx->accept(this);

  symbolTable.exitScope();

  if (func->getReturnType()->isVoid() &&
      !builder.getCurrentBB()->getTerminator())
    builder.buildRet();
  else if (!builder.getCurrentBB()->getTerminator()) {
    return Symbol::none();
  }

  return Symbol::none();
}

Any IRGenerator::visitFuncFParam(SysYParser::FuncFParamContext *ctx) {
  string paramName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(paramName)) {
    // TODO: error
    return Symbol::none();
  }

  SymbolType *symbolTy = any_as<SymbolType *>(ctx->btype()->accept(this));
  for (int i = ctx->L_BRACKT().size() - 1; i >= 0; i--) {
    if (i == 0)
      symbolTy = SymbolType::getArrayTy(-1, symbolTy, symbolTable);
    else {
      // TODO: check---calculate the number of element
      Any numOfElement = solveConstExp(ctx->exp()[i - 1]);
      assert(any_is<int>(numOfElement));
      symbolTy = SymbolType::getArrayTy(any_as<int>(numOfElement), symbolTy,
                                        symbolTable);
    }
  }

  Type *irTy = getIRType(symbolTy, ctx->btype());
  Argument *arg = new Argument(irTy, paramName);

  // As the C semantics, the array pointer is immutable. Thus, we don't create
  // stack for the pointer to array. Instead, we use it directly.
  ((Function *)currentFunc->entity)->addArgument(arg);
  if (symbolTy->isArray()) {
    symbolTable.create(paramName, symbolTy, arg);
  } else {
    Value *stackForArg =
        builder.buildStack(arg->getType(), paramName + ".stack");
    symbolTable.create(paramName, symbolTy, stackForArg);
  }

  // Demote argument to stack.
  return Symbol::none();
}

Symbol IRGenerator::genImplicitCast(Symbol original, SymbolType *expectedType) {
  if (!original)
    return original;

  if (original.symbolType->isIdentical(*expectedType))
    return original;

  if (expectedType->isFloat()) {
    if (original.symbolType->isInt()) {
      Value *casted =
          builder.buildCast<SI2FInst>(original.entity, ir->getFloatType());
      return {casted, expectedType};
    }

    if (original.symbolType->isBool()) {
      Value *toInt =
          builder.buildCast<ZExtInst>(original.entity, ir->getIntType());
      Value *casted = builder.buildCast<SI2FInst>(toInt, ir->getFloatType());
      return {casted, expectedType};
    }
  }

  if (expectedType->isInt()) {
    if (original.symbolType->isFloat()) {
      Value *casted =
          builder.buildCast<F2SIInst>(original.entity, ir->getIntType());
      return {casted, expectedType};
    }

    if (original.symbolType->isBool()) {
      Value *casted =
          builder.buildCast<ZExtInst>(original.entity, ir->getIntType());
      return {casted, expectedType};
    }
    nnvm_unimpl();
  }

  if (expectedType->isBool()) {

    if (original.symbolType->isInt())
      return {builder.buildICmpNEZero(original.entity), expectedType};

    if (original.symbolType->isFloat()) {
      Value *notZero = builder.buildFCmp(FCmpInst::ONE, original.entity,
                                         ConstantFloat::create(*ir, 0.0));
      return {notZero, expectedType};
    }

    nnvm_unimpl();
  }

  // TODO: how to handle array with different element type?
  if (original.symbolType->isArray() && expectedType->isArray())
    return {original.entity, expectedType};

  return Symbol::none();
}

void IRGenerator::widen(Symbol &lhs, Symbol &rhs) {
  std::map<SymbolType *, int> levelOf = {
      {SymbolType::getBoolTy(), 0},
      {SymbolType::getIntTy(), 1},
      {SymbolType::getFloatTy(), 2},
  };

  SymbolType *topType;
  if (levelOf[lhs.symbolType] >= levelOf[rhs.symbolType])
    topType = lhs.symbolType;
  else
    topType = rhs.symbolType;

  lhs = genImplicitCast(lhs, topType);
  rhs = genImplicitCast(rhs, topType);
}

Any IRGenerator::visitStmt(SysYParser::StmtContext *ctx) {

  if (ctx->ASSIGN()) {
    Symbol lhs = any_as<Symbol>(ctx->lVal()->accept(this));
    if (!lhs)
      return Symbol::none();

    Symbol rhs = any_as<Symbol>(ctx->exp()->accept(this));
    rhs = genImplicitCast(rhs, lhs.symbolType);
    if (!rhs)
      return Symbol::none();

    return Symbol{builder.buildStore(rhs.entity, lhs.entity), nullptr};
  } else if (ctx->IF()) {
    Symbol cond = any_as<Symbol>(ctx->cond()->accept(this));
    cond = genImplicitCast(cond, SymbolType::getBoolTy());

    if (!cond)
      return Symbol::none();

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
      Symbol returned = any_as<Symbol>(ctx->returnStmt()->exp()->accept(this));
      if (!returned)
        return Symbol::none();

      returned =
          genImplicitCast(returned, currentFunc->symbolType->containedTy);
      if (!returned)
        // TODO: cast fail
        return Symbol::none();

      return Symbol{builder.buildRet(returned.entity), nullptr};
    } else {
      if (currentFunc->symbolType->containedTy->symbolID !=
          SymbolType::SymbolID::Void) {
        // TODO:  error
        return Symbol::none();
      }

      return Symbol{builder.buildRet(), nullptr};
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
    Symbol cond = any_as<Symbol>(ctx->cond()->accept(this));
    if (!cond)
      return Symbol::none();
    cond.entity = builder.buildICmpNEZero(cond.entity);
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
    Symbol exp = any_as<Symbol>(ctx->exp()->accept(this));
    return exp;
  } else if (ctx->AND()) {

    // lhs && rhs  -->  if lhs then rhs else false;
    Symbol lhs = any_as<Symbol>(ctx->cond(0)->accept(this));
    lhs = genImplicitCast(lhs, SymbolType::getBoolTy());
    if (!lhs)
      return Symbol::none();

    BasicBlock *thenBB =
        new BasicBlock(builder.getCurrentFunc(), "select.then");
    BasicBlock *elseBB =
        new BasicBlock(builder.getCurrentFunc(), "select.else");
    BasicBlock *exitBB =
        new BasicBlock(builder.getCurrentFunc(), "select.exit");

    Value *result = builder.buildStack(ir->getBoolType(), "select");
    // if lhs
    builder.buildBr(lhs.entity, thenBB, elseBB);

    // then
    builder.setInsertPoint(thenBB->end());
    Symbol rhs = any_as<Symbol>(ctx->cond(1)->accept(this));
    rhs = genImplicitCast(rhs, SymbolType::getBoolTy());
    if (!rhs)
      return Symbol::none();
    builder.buildStore(rhs.entity, result);
    builder.buildBr(exitBB);

    // else
    builder.setInsertPoint(elseBB->end());
    builder.buildStore(builder.getZero(ir->getBoolType()), result);
    builder.buildBr(exitBB);

    builder.setInsertPoint(exitBB->end());
    return Symbol{builder.buildLoad(result, ir->getBoolType()),
                  SymbolType::getBoolTy()};
  } else if (ctx->OR()) {

    // lhs || rhs  -->  if lhs then true else rhs;
    Symbol lhs = any_as<Symbol>(ctx->cond(0)->accept(this));
    lhs = genImplicitCast(lhs, SymbolType::getBoolTy());
    if (!lhs)
      return Symbol::none();

    BasicBlock *thenBB =
        new BasicBlock(builder.getCurrentFunc(), "select.then");
    BasicBlock *elseBB =
        new BasicBlock(builder.getCurrentFunc(), "select.else");
    BasicBlock *exitBB =
        new BasicBlock(builder.getCurrentFunc(), "select.exit");

    Value *result = builder.buildStack(ir->getBoolType(), "select");
    // if lhs
    builder.buildBr(lhs.entity, thenBB, elseBB);

    // then
    builder.setInsertPoint(thenBB->end());
    builder.buildStore(builder.getOne(ir->getBoolType()), result);
    builder.buildBr(exitBB);

    // else
    builder.setInsertPoint(elseBB->end());
    Symbol rhs = any_as<Symbol>(ctx->cond(1)->accept(this));
    rhs = genImplicitCast(rhs, SymbolType::getBoolTy());
    if (!rhs)
      return Symbol::none();
    rhs.entity = builder.buildICmpNEZero(rhs.entity);
    builder.buildStore(rhs.entity, result);
    builder.buildBr(exitBB);

    builder.setInsertPoint(exitBB->end());
    return Symbol{builder.buildLoad(result, ir->getBoolType()),
                  SymbolType::getBoolTy()};
  } else {
    Symbol exp1 = any_as<Symbol>(ctx->cond(0)->accept(this));
    if (!exp1)
      return Symbol::none();

    Symbol exp2 = any_as<Symbol>(ctx->cond(1)->accept(this));
    if (!exp2)
      return Symbol::none();

    widen(exp1, exp2);

    Value *lhs = exp1.entity;
    Value *rhs = exp2.entity;

    if (exp1.symbolType->isFloat()) {
      if (ctx->EQ())
        return Symbol{builder.buildFCmp(FCmpInst::OEQ, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->NEQ())
        return Symbol{builder.buildFCmp(FCmpInst::ONE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->LT())
        return Symbol{builder.buildFCmp(FCmpInst::OLT, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->GT())
        return Symbol{builder.buildFCmp(FCmpInst::OGT, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->LE())
        return Symbol{builder.buildFCmp(FCmpInst::OLE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->GE())
        return Symbol{builder.buildFCmp(FCmpInst::OGE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else
        nnvm_unreachable("Impossible");
    } else {
      if (ctx->EQ())
        return Symbol{builder.buildICmp(ICmpInst::EQ, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->NEQ())
        return Symbol{builder.buildICmp(ICmpInst::NE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->LT())
        return Symbol{builder.buildICmp(ICmpInst::SLT, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->GT())
        return Symbol{builder.buildICmp(ICmpInst::SGT, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->LE())
        return Symbol{builder.buildICmp(ICmpInst::SLE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else if (ctx->GE())
        return Symbol{builder.buildICmp(ICmpInst::SGE, lhs, rhs),
                      SymbolType::getBoolTy()};
      else
        nnvm_unreachable("Impossible");
    }
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
    uint i = 0;
    for (auto *paramCtx : ctx->funcRParams()->param()) {
      Symbol paramSymbol = any_as<Symbol>(paramCtx->accept(this));
      paramSymbol =
          genImplicitCast(paramSymbol, calleeSymbol->symbolType->argTys[i]);
      if (!paramSymbol)
        return Symbol::none();
      args.push_back(paramSymbol.entity);
      i++;
    }
  }

  return Symbol(builder.buildCall(callee, args),
                calleeSymbol->symbolType->containedTy);
}

static inline uint getByteSizeOf(SymbolType *type) {
  if (type->isBool())
    return 1;
  if (type->isInt() || type->isFloat())
    return 4;
  if (type->isArray())
    return getByteSizeOf(type->containedTy) * type->numElements;
  nnvm_unreachable("WTF?")
}

Any IRGenerator::visitLVal(SysYParser::LValContext *ctx) {
  // TODO: handle array index
  Symbol address = *symbolTable.lookup(ctx->IDENT()->getText());

  if (!address)
    // TODO: report error
    return Symbol::none();

  for (auto *expCtx : ctx->exp()) {
    Symbol index = any_as<Symbol>(expCtx->accept(this));
    if (!index)
      return Symbol::none();
    Value *byteIndexEntity = builder.buildBinOp<MulInst>(
        index.entity,
        ConstantInt::create(*ir, index.entity->getType(),
                            getByteSizeOf(address.symbolType->containedTy)),
        index.entity->getType());
    Value *indexed = builder.buildBinOp<PtrAddInst>(
        address.entity, byteIndexEntity, ir->getPtrType());
    address = {indexed, address.symbolType->containedTy};
  }

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
  Symbol lhs = any_as<Symbol>(ctx->exp(0)->accept(this));
  // TODO: error
  if (!lhs)
    return nullptr;
  Symbol rhs = any_as<Symbol>(ctx->exp(1)->accept(this));
  if (!rhs)
    return nullptr;

  widen(lhs, rhs);
  // TODO: error
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
  Symbol operand = any_as<Symbol>(ctx->exp()[0]->accept(this));
  if (!operand)
    return Symbol::none();

  Value *val = operand.entity;
  // TODO: unary op
  if (ctx->unaryOp()->PLUS())
    return operand;

  if (ctx->unaryOp()->MINUS()) {
    if (operand.symbolType->isInt()) {
      return Symbol{builder.buildBinOp<SubInst>(builder.getZero(val->getType()),
                                                val, val->getType()),
                    operand.symbolType};
    } else if (operand.symbolType->isFloat()) {
      return Symbol{builder.buildFNeg(operand.entity), operand.symbolType};
    } else {
      nnvm_unimpl();
    }
  }

  if (ctx->unaryOp()->NOT()) {
    operand = genImplicitCast(operand, SymbolType::getBoolTy());
    operand.entity = builder.buildBinOp<XorInst>(
        operand.entity, builder.getOne(ir->getBoolType()), ir->getBoolType());
    operand = genImplicitCast(operand, SymbolType::getIntTy());
    return operand;
  }
  nnvm_unreachable("UnaryOp Not implemented!");
}

Any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
  if (ctx->lVal()) {
    Symbol lVal = any_as<Symbol>(ctx->lVal()->accept(this));

    if (!lVal)
      return Symbol::none();

    if (auto constVal = dyn_cast<Constant>(lVal.entity))
      return lVal;

    if (lVal.symbolType->isArray())
      return lVal;

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
      return Symbol{createConstFloat(std::stof(floatConst->getText())),
                    SymbolType::getFloatTy()};
    }

    if (auto *intConst = number->INTEGER_CONST()) {
      return Symbol{createConstInt(std::stoi(intConst->getText(), 0,
                                             getRadixOf(intConst->getText()))),
                    SymbolType::getIntTy()};
    }

    nnvm_unreachable("No such literal number")
  }
  return visitChildren(ctx);
}

Constant *IRGenerator::createConstInt(int value) {
  return ConstantInt::create(*ir, ir->getIntType(), value);
}
Constant *IRGenerator::createConstFloat(float value) {
  return ConstantFloat::create(*ir, value);
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
