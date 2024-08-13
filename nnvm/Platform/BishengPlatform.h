#pragma once
#include "Platform.h"
namespace nnvm {

class BishengPlaform final : public Platform {
public:
  bool isExpensiveToLoadConstant(Constant *C) {
    if (C->isa<ConstantFloat>())
      return true;

    if (ConstantInt *CI = mayCast<ConstantInt>(C))
      return CI->getType()->getBits() >= 64;

    return false;
  };

  bool isExpensiveToLoadGlobalAddress(GlobalVariable *C) { return true; };
};

} /* namespace nnvm */
