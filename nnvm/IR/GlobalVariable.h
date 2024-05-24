#pragma once

#include "IR/Constant.h"
#include "IR/Value.h"

namespace nnvm {

class GlobalVariable : public Value {
public:
  GlobalVariable(Module &module);
  GlobalVariable(Module &module, Constant *initVal);

  std::string dump() override;
  std::string dumpAsOperand() override;

private:
  Constant *initVal;
};

} // namespace nnvm
