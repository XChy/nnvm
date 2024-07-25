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
using std::is_same_v;
static int getRadixOf(std::string_view text);

IRGenerator::IRGenerator() {}

void IRGenerator::emitIR(antlr4::tree::ParseTree *ast, Module *ir) {
  this->ir = ir;
  builder.setModule(ir);
  // init some const values
  constZeroInt = ConstantInt::create(*ir, ir->getIntType(), 0);
  constOneInt = ConstantInt::create(*ir, ir->getIntType(), 1);
  constZeroFloat = ConstantFloat::create(*ir, 0.0);
  constOneFloat = ConstantFloat::create(*ir, 1.0);
  constTrue = ConstantInt::create(*ir, ir->getBoolType(), 1);
  constFalse = ConstantInt::create(*ir, ir->getBoolType(), 0);
  constMinusOneInt = ConstantInt::create(*ir, ir->getIntType(), -1);
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

/**
 * Visit the basic type context
 * @return Int / Float SymbolType* on success
 */
Any IRGenerator::visitBtype(SysYParser::BtypeContext *ctx) {
  if (ctx->INT())
    return SymbolType::getIntTy();
  if (ctx->FLOAT())
    return SymbolType::getFloatTy();
  static_assert("Not supported such type");
  return nullptr;
}

/**
 * Visit the function type context
 * @return Int / Float / Void SymbolType on success
 */
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
 * @return The value of the lval, a int or float
 */
Any IRGenerator::solveConstLval(SysYParser::LValContext *ctx) {
  std::vector<nnvm::SysYParser::ExpContext *> indexs = ctx->exp();
  Constant *valConstant;
  Symbol *lvalSymbol = symbolTable.lookup(ctx->IDENT()->getText());

  if (auto *globalConstant = mayCast<GlobalVariable>(lvalSymbol->entity))
    valConstant = globalConstant->getInitVal();
  else
    valConstant = cast<Constant>(lvalSymbol->entity);

  if (auto constInt = mayCast<ConstantInt>(valConstant))
    return (int)constInt->getValue();

  if (auto constFloat = mayCast<ConstantFloat>(valConstant))
    return constFloat->getValue();

  if (auto constArray = mayCast<ConstantArray>(valConstant)) {
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
        if (auto constInt = mayCast<ConstantInt>(valConstant)) {
          return (int)constInt->getValue();
        }
        if (auto constFloat = mayCast<ConstantFloat>(valConstant)) {
          return constFloat->getValue();
        }
      }
    }
  }

  nnvm_unimpl();
}

/**
 * Convert the value from float to int, or reversely.
 * @param value inner type is int or float
 */
template <typename MayFrom, typename To>
static inline To castConstExp(Any value) {
  return any_is<MayFrom>(value) ? (To)(any_as<MayFrom>(value))
                                : any_as<To>(value);
}

/**
 * Solve the constant expression
 * @return The value of the expression, a int or float
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
        if (ctx->unaryOp()->BITNOT())
          return ~any_as<int>(operand);
      }
      // TODO: report error
      nnvm_unimpl();
    }

    if (auto lvalCtx = ctx->lVal()) {
      return solveConstLval(lvalCtx);
    }
    nnvm_unreachable("Impossible to reach here");
  }

  // binary operation
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
      if (rhs == 0) {
        // TODO: error.
        nnvm_unimpl();
      }
      return lhs / rhs;
    }
    // TODO: report error
    nnvm_unimpl();
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
    if (ctx->BITAND()) {
      return lhs & rhs;
    }
    if (ctx->BITOR()) {
      return lhs | rhs;
    }
    if (ctx->BITSHL()) {
      return lhs << rhs;
    }
    if (ctx->BITSHR()) {
      return lhs >> rhs;
    }
    if (ctx->BITXOR()) {
      return lhs ^ rhs;
    }
    nnvm_unreachable("Impossible to reach here");
  }
  nnvm_unreachable("Impossible to reach here");
}

/* A top function that
 * visits the constant decline context, call constDef for each constDef context,
 */
Any IRGenerator::visitConstDecl(SysYParser::ConstDeclContext *ctx) {
  for (auto ctxDef : ctx->constDef()) {
    // TODO: type check
    constDef(ctxDef, ctx->btype());
  }
  return Symbol::none();
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

SymbolType *IRGenerator::getArrayType(
    SymbolType *containedTy,
    std::vector<nnvm::SysYParser::ConstExpContext *> dimCtxs) {
  SymbolType *arrayTy = containedTy;
  for (auto it = dimCtxs.rbegin(); it != dimCtxs.rend(); it++) {
    Any nrElements = solveConstExp((*it)->exp());
    assert(any_is<int>(nrElements));
    arrayTy =
        SymbolType::getArrayTy(any_as<int>(nrElements), arrayTy, symbolTable);
  }
  return arrayTy;
}

/**
 * This function defines constant value
 * @param ctx The constant definition(context)
 * @param btype Type of the constant(context)
 * @return Created symbol on success
 */
Any IRGenerator::constDef(SysYParser::ConstDefContext *ctx,
                          SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = any_as<SymbolType *>(btype->accept(this));
  string symbolName = ctx->IDENT()->getText();
  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: report duplicate define error
    return Symbol::none();
  }

  symbolType = getArrayType(symbolType, ctx->constExp());

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
      global->setImmutable(true);
      return symbolTable.create(symbolName, symbolType, global);
    } else {
      Type *irElementType = sym2IR(symbolType->getInnerMost());
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

  // global && none array
  if (symbolTable.isGlobal()) {
    GlobalVariable *global = new GlobalVariable(*ir, constVal);
    global->setName(ctx->IDENT()->getText());
    global->setImmutable(true);
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

/**
 * Solve the init value of a array
 * @param initVal The context of the init value
 * @param currentType The type of the current value
 * @param irElementType The type of the element in the array
 * @param getVal The function to get the value from the context
 * @param getInitVal The function to get the init value from the context
 * @param getInitVals The function to get the init values from the context
 * @param isConst Whether the value is a constant
 * @return True on success
 */
template <typename InitCtx, typename GetVal, typename GetInitVal,
          typename GetInitVals>
bool IRGenerator::solveInit(InitCtx *initVal, SymbolType *currentType,
                            Type *irElementType, std::vector<Value *> &output,
                            GetVal getVal, GetInitVal getInitVal,
                            GetInitVals getInitVals, bool isConst) {
  if (!isConst) {
    if (getVal(initVal)) {
      Symbol exp = any_as<Symbol>(getVal(initVal)->accept(this));
      if (currentType->isArray()) {
        exp = genImplicitCast(exp, currentType->getInnerMost());
      } else {
        exp = genImplicitCast(exp, currentType);
      }
      if (!exp)
        return false;
      output.push_back(exp.entity);
      return true;
    }
  } else {
    if (getVal(initVal)) {
      Any exp = solveConstExp(getVal(initVal));
      if (any_is<int>(exp)) {
        output.push_back(
            ConstantInt::create(*ir, irElementType, any_as<int>(exp)));
      } else if (any_is<float>(exp)) {
        output.push_back(ConstantFloat::create(*ir, any_as<float>(exp)));
      } else {
        nnvm_unreachable("Should not reach here");
      }
      return true;
    }
  }
  size_t numBefore = output.size();
  if (currentType->isArray()) {
    int initValIndex = 0;
    if (numBefore % currentType->getTotalNumOfElements() != 0) {
      solveInit(initVal, currentType->containedTy, irElementType, output,
                getVal, getInitVal, getInitVals, isConst);
      return true;
    }
    while (output.size() - numBefore < currentType->getTotalNumOfElements()) {
      if (initValIndex >= getInitVals(initVal).size()) {
        output.push_back(builder.getZero(irElementType));
      } else {
        bool success = solveInit(
            getInitVal(initVal, initValIndex), currentType->containedTy,
            irElementType, output, getVal, getInitVal, getInitVals, isConst);
        if (!success)
          return false;
      }
      initValIndex++;
    }
    return true;
  }
  nnvm_unreachable("Should not reach here");
}

/**
 * Helper function to fetch *Constant* elements from a const init value context,
 * the main logic is in the solveInit function
 */
Constant *
IRGenerator::fetchFlatElementsFrom(SysYParser::ConstInitValContext *ctx,
                                   SymbolType *type) {
  SymbolType *elementTy = type->getInnerMost();
  uint totalNumOfElements = type->getTotalNumOfElements();
  Type *arrayType = ir->getArrayType(sym2IR(elementTy), totalNumOfElements);
  if (!ctx || ctx->constInitVal().empty())
    return ConstantAllZeros::create(*ir, arrayType);
  std::vector<Value *> initValList;
  initValList.reserve(totalNumOfElements);
  solveInit(
      ctx, type, sym2IR(elementTy), initValList,
      [](auto ctx) { return ctx->constExp() ? ctx->constExp()->exp() : NULL; },
      [](auto ctx, int index) { return ctx->constInitVal(index); },
      [](auto ctx) { return ctx->constInitVal(); }, true);

  std::vector<Constant *> initValListConst;
  std::transform(initValList.begin(), initValList.end(),
                 std::back_inserter(initValListConst),
                 [](Value *val) { return cast<Constant>(val); });
  return ConstantArray::create(*ir, arrayType, initValListConst);
}

/**
 * Helper function to fetch *Constant* elements from a init value context,
 * the main logic is in the solveInit function
 */
Constant *IRGenerator::fetchFlatElementsFrom(SysYParser::InitValContext *ctx,
                                             SymbolType *type) {
  SymbolType *elementTy = type->getInnerMost();
  uint totalNumOfElements = type->getTotalNumOfElements();
  Type *arrayType = ir->getArrayType(sym2IR(elementTy), totalNumOfElements);
  if (!ctx || ctx->initVal().empty())
    return ConstantAllZeros::create(*ir, arrayType);
  std::vector<Value *> initValList;
  initValList.reserve(totalNumOfElements);
  solveInit(
      ctx, type, sym2IR(elementTy), initValList,
      [](auto ctx) { return ctx->exp(); },
      [](auto ctx, int index) { return ctx->initVal(index); },
      [](auto ctx) { return ctx->initVal(); }, true);

  std::vector<Constant *> initValListConst;
  std::transform(initValList.begin(), initValList.end(),
                 std::back_inserter(initValListConst),
                 [](Value *val) { return cast<Constant>(val); });
  return ConstantArray::create(*ir, arrayType, initValListConst);
}

/**
 *  Roll up the same values' init in a array
 *  @param valueCount the number of the same values
 *  @param offset the offset of the array
 *  @param currentValue the value to be stored
 *  @param irVal the array
 *  @param irElementType the type of the array
 */
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

/**
 * Define varible with given context and type
 * @param ctx The context of the variable
 * @param btype The type of the variable
 */
Any IRGenerator::varDef(SysYParser::VarDefContext *ctx,
                        SysYParser::BtypeContext *btype) {
  SymbolType *symbolType = any_as<SymbolType *>(btype->accept(this));
  string symbolName = ctx->IDENT()->getText();

  if (symbolTable.lookupInCurrentScope(symbolName)) {
    // TODO: error
    return Symbol::none();
  }

  symbolType = getArrayType(symbolType, ctx->constExp());

  Type *irType = getIRType(symbolType, btype);
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
      globalVar->setImmutable(false);
      irVal = globalVar;
    } else {
      Type *irElementType = sym2IR(symbolType->getInnerMost());
      irVal = builder.buildStack(
          irElementType, symbolType->getTotalNumOfElements(), symbolName);

      if (ctx->initVal()) {
        std::vector<Value *> values;
        if (!solveInit(
                ctx->initVal(), symbolType, irElementType, values,
                [](auto ctx) { return ctx->exp(); },
                [](auto ctx, int index) { return ctx->initVal(index); },
                [](auto ctx) { return ctx->initVal(); }, false))
          return Symbol::none();
        uint offset = 0;
        // we put the same values together
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

/**
 * Enter a new scope and visit all statments in the block.
 */
Any IRGenerator::visitBlock(SysYParser::BlockContext *ctx) {
  symbolTable.enterScope();
  for (auto stmtCtx : ctx->blockItem()) {
    stmtCtx->accept(this);
  }
  symbolTable.exitScope();
  return Symbol::none();
}

/**
 *  Visit the function define context, a top function
 *  @return None
 */
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
    builder.buildUnreachable();
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

/**
 * Cast original to expectedType
 * @param original The original symbol
 * @param expectedType The expected type
 */
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

/**
 * Widen lower type to higher type
 * @param lhs reference to the left Symbol
 * @param rhs reference to the right Symbol
 */
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

/**
 * Build a loop with given condition and statements
 * If stmt's size > 1, we will link them in sequence.
 */
Any IRGenerator::buildLoop(SysYParser::CondContext *condCtx,
                           SysYParser::StmtContext *stmtCtx,
                           SysYParser::ForUpdateContext *updateCtx) {
  BasicBlock *whileCond =
      new BasicBlock(cast<Function>(currentFunc->entity), "while.cond");
  BasicBlock *whileBody =
      new BasicBlock(cast<Function>(currentFunc->entity), "while.body");
  BasicBlock *whileExit =
      new BasicBlock(cast<Function>(currentFunc->entity), "while.exit");

  builder.buildBr(whileCond);
  // While Conditon
  builder.setInsertPoint(whileCond->end());
  Symbol cond = any_as<Symbol>(condCtx->accept(this));
  if (!cond)
    return Symbol::none();
  cond.entity = builder.buildICmpNEZero(cond.entity);
  builder.buildBr(cond.entity, whileBody, whileExit);

  // While Body
  builder.setInsertPoint(whileBody->end());
  whileLoops.push({whileCond, whileExit});
  stmtCtx->accept(this);
  if (updateCtx) {
    for (auto lValUpdate : updateCtx->lValUpdate()) {
      lValUpdate->accept(this);
    }
  }
  whileLoops.pop();
  if (!builder.getCurrentBB()->getTerminator())
    builder.buildBr(whileCond);

  builder.setInsertPoint(whileExit->end());
  return Symbol::none();
}

/**
 *  Visit statement
 *  @return Return inst on success, nullptr on failure
 */
Any IRGenerator::visitStmt(SysYParser::StmtContext *ctx) {

  if (builder.getCurrentBB()->getTerminator())
    return Symbol::none();

  if (ctx->lValUpdate()) { // assign
    return ctx->lValUpdate()->accept(this);

  } else if (ctx->IF()) { // if else
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
  } else if (ctx->returnStmt()) { // return
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
      if (!currentFunc->symbolType->containedTy->isVoid()) {
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
  } else if (ctx->WHILE()) { // while
    if (!ctx->cond()) {
      // TODO: error
      return Symbol::none();
    }
    return buildLoop(ctx->cond(), ctx->stmt(0), nullptr);
  } else if (ctx->BREAK()) {
    builder.buildBr(whileLoops.top().afterBB);
  } else if (ctx->FOR()) {
    symbolTable.enterScope();
    ctx->forInit()->accept(this);
    auto condCtx = ctx->cond();
    auto stmtCtx = ctx->stmt(0);
    auto updateCtx = ctx->forUpdate();
    buildLoop(condCtx, stmtCtx, updateCtx);
    symbolTable.exitScope();
    return Symbol::none();
  }
  return Symbol::none();
}

/**
 * Visit Condition
 * @return Bool Symbol on success, Symbol::none() on failure
 */
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

/**
 * Visit Call
 * @return Symbol on success, Symbol::none() on failure
 */
Any IRGenerator::visitCall(SysYParser::CallContext *ctx) {
  auto calleeName = ctx->IDENT()->getText();

  if (calleeName == "starttime" || calleeName == "stoptime")
    return visitSpecialCallWithLineNo(calleeName,
                                      ctx->IDENT()->getSymbol()->getLine());

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

/**
 * This function is used to call starttime and stoptime
 */
Symbol IRGenerator::visitSpecialCallWithLineNo(const std::string &name,
                                               uint64_t lineNo) {

  std::map<std::string, std::string> funcMap = {
      {"starttime", "_sysy_starttime"},
      {"stoptime", "_sysy_stoptime"},
  };
  Symbol *calleeSymbol = symbolTable.lookup(funcMap[name]);
  Function *callee = cast<Function>(calleeSymbol->entity);
  Constant *lineNoValue = ConstantInt::create(*ir, ir->getIntType(), lineNo);
  return Symbol(builder.buildCall(callee, {lineNoValue}),
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

/**
 * Visit lval
 * @return Symbol on success, Symbol::none() on failure
 */
Any IRGenerator::visitLVal(SysYParser::LValContext *ctx) {
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

/**
 * Get the IRType from the symbol type.
 */
Type *IRGenerator::sym2IR(SymbolType *symbolTy) {
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

/**
 * Helper function to get the IRType from the btype
 */
static int getRadixOf(std::string_view text) {
  if (text.size() >= 2) {
    std::string_view prefix = text.substr(0, 2);
    if (prefix == "0x" || prefix == "0X")
      return 16;
    if (prefix[0] == '0')
      return 8;
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
  if (ctx->BITAND()) {
    if (!lhs.symbolType->isInt() || !rhs.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    val = builder.buildBinOp<AndInst>(lhs.entity, rhs.entity, ir->getIntType());
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->BITOR()) {
    if (!lhs.symbolType->isInt() || !rhs.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    val = builder.buildBinOp<OrInst>(lhs.entity, rhs.entity, ir->getIntType());
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->BITXOR()) {
    if (!lhs.symbolType->isInt() || !rhs.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    val = builder.buildBinOp<XorInst>(lhs.entity, rhs.entity, ir->getIntType());
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->BITSHL()) {
    if (!lhs.symbolType->isInt() || !rhs.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    val = builder.buildBinOp<ShlInst>(lhs.entity, rhs.entity, ir->getIntType());
    return Symbol{val, lhs.symbolType};
  }
  if (ctx->BITSHR()) {
    if (!lhs.symbolType->isInt() || !rhs.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    // signed Integer : Arithmetic shift right
    val =
        builder.buildBinOp<AShrInst>(lhs.entity, rhs.entity, ir->getIntType());
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

  if (ctx->unaryOp()->BITNOT()) {
    if (!operand.symbolType->isInt()) {
      // TODO: report error
      nnvm_unimpl();
    }
    operand.entity = builder.buildBinOp<XorInst>(
        operand.entity, constMinusOneInt, ir->getIntType());
    return operand;
  }
  nnvm_unreachable("UnaryOp Not implemented!");
}

Any IRGenerator::visitExp(SysYParser::ExpContext *ctx) {
  if (ctx->lVal()) {
    Symbol lVal = any_as<Symbol>(ctx->lVal()->accept(this));

    if (!lVal)
      return Symbol::none();

    if (auto constVal = mayCast<Constant>(lVal.entity))
      return lVal;

    if (lVal.symbolType->isArray())
      return lVal;

    return Symbol{builder.buildLoad(lVal.entity, sym2IR(lVal.symbolType),
                                    lVal.entity->getName() + ".load"),
                  lVal.symbolType};
  }

  if (ctx->L_PAREN())
    return ctx->exp(0)->accept(this);

  if (ctx->PLUS() || ctx->MINUS() || ctx->DIV() || ctx->MOD() || ctx->MUL() ||
      ctx->BITAND() || ctx->BITOR() || ctx->BITXOR() || ctx->BITSHL() ||
      ctx->BITSHR())
    return expBinOp(ctx);

  if (ctx->unaryOp())
    return expUnaryOp(ctx);

  if (auto *number = ctx->number()) {
    if (auto *floatConst = number->FLOAT_CONST()) {
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

Any IRGenerator::visitLValUpdate(SysYParser::LValUpdateContext *ctx) {
  Symbol lhs = any_as<Symbol>(ctx->lVal()->accept(this));
  if (!lhs)
    return Symbol::none();

  Symbol rhs = any_as<Symbol>(ctx->exp()->accept(this));
  rhs = genImplicitCast(rhs, lhs.symbolType);
  if (!rhs)
    return Symbol::none();

  return Symbol{builder.buildStore(rhs.entity, lhs.entity), nullptr};
}

Any IRGenerator::visitForInit(SysYParser::ForInitContext *ctx) {
  if (ctx->btype()) {
    for (auto *varDefCtx : ctx->varDef()) {
      varDef(varDefCtx, ctx->btype());
    }
  } else {
    for (auto lValUpdate : ctx->lValUpdate()) {
      lValUpdate->accept(this);
    }
  }
  return Symbol::none();
}

/**
 * Use this function to create a constant integer
 */
Constant *IRGenerator::createConstInt(int value) {
  return ConstantInt::create(*ir, ir->getIntType(), value);
}

/**
 * Use this function to create a constant float
 */
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
