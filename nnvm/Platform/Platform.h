#pragma once

#include "IR/Constant.h"
#include "IR/GlobalVariable.h"

namespace nnvm {

class Platform {
public:
  virtual bool isExpensiveToLoadConstant(Constant *C) { return false; };
  virtual bool isExpensiveToLoadGlobalAddress(GlobalVariable *C) {
    return false;
  };
  virtual uint getArrayRerollNum() { return 32; }
};

} /* namespace nnvm */
