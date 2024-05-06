#pragma once
#include "Backend/RISCV/LowIR.h"
#include "IR/BasicBlock.h"
#include "IR/Module.h"
#include <unordered_map>
namespace nnvm::riscv {

class LowerHelper {
public:
  LowInst lowerInst(Instruction *I);
  void mapAll(Module &module);
  void lower(Module &module, LowModule &lowered);

  LowOperand virtualReg(Value *def);

private:
  std::unordered_map<Value *, LowOperand> defMap;
  std::unordered_map<Function *, LowFunc *> funcMap;
  std::unordered_map<BasicBlock *, LowBB *> BBMap;
  uint virtualRegNum = 0;
};
} /* namespace nnvm::riscv */
