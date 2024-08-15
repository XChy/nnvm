#pragma once
#include "Platform.h"
namespace nnvm {

class BishengPlaform final : public Platform {
public:
  bool isExpensiveToLoadConstant(Constant *C) {
    if (C->isa<ConstantFloat>())
      return true;

    if (ConstantInt *CI = mayCast<ConstantInt>(C))
      return !canExpressInBits<12>(CI->getSignedValue());

    return false;
  };

  bool isExpensiveToLoadGlobalAddress(GlobalVariable *C) { return true; };
};

} /* namespace nnvm */
