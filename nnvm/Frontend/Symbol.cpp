#include "Symbol.h"
#include "Frontend/IRGenerator.h"

using namespace nnvm;

static SymbolType IntTy{.symbolID = SymbolType::Int};
static SymbolType VoidTy{.symbolID = SymbolType::Void};
static SymbolType FloatTy{.symbolID = SymbolType::Float};
static SymbolType BoolTy{.symbolID = SymbolType::Bool};

SymbolType *SymbolType::getIntTy() { return &IntTy; }
SymbolType *SymbolType::getVoidTy() { return &VoidTy; }
SymbolType *SymbolType::getFloatTy() { return &FloatTy; }
SymbolType *SymbolType::getBoolTy() { return &BoolTy; }
SymbolType *SymbolType::getArrayTy(uint numElements, SymbolType *contained,
                                   SymbolTable &table) {
  auto newTy = new SymbolType();
  newTy->symbolID = SymbolType::Array;
  newTy->numElements = numElements;
  newTy->containedTy = contained;
  table.managedTys.push_back(newTy);
  return newTy;
}

SymbolType *SymbolType::getFuncTy(SymbolType *returnTy,
                                  const std::vector<SymbolType *> &argTys,
                                  SymbolTable &table) {
  auto newTy = new SymbolType();
  newTy->symbolID = SymbolType::Array;
  newTy->containedTy = returnTy;
  newTy->argTys = argTys;
  table.managedTys.push_back(newTy);
  return newTy;
}

static Symbol noneSymbol;
Symbol Symbol::none() { return noneSymbol; }
