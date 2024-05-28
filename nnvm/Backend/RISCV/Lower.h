#pragma once
#include "Backend/RISCV/LowIR.h"
#include "IR/BasicBlock.h"
#include "IR/Module.h"
#include <unordered_map>
namespace nnvm::riscv {

class LowerHelper {
public:
  void lowerInst(LowFunc *lowFunc, Instruction *I,
                 std::list<LowInst> &instList);

  void mapAll(Module &module);

  /**
   * Lower the MIR module to a LIR module
   * @param module MIR module
   * @param lower LIR module
   */
  void lower(Module &module, LowModule &lowered);

  LowOperand virtualReg(Value *def, LowFunc *lowFunc);

private:
  std::unordered_map<Value *, LowOperand> defMap;
  std::unordered_map<Function *, LowFunc *> funcMap;
  std::unordered_map<BasicBlock *, LowBB *> BBMap;
};

} /* namespace nnvm::riscv */
