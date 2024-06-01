#pragma once
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "IR/BasicBlock.h"
#include "IR/Module.h"
#include <unordered_map>
namespace nnvm::riscv {

class LowerHelper {
public:
  void lowerInst(LIRFunc *lowFunc, Instruction *I,
                 LIRBuilder& builder);

  void mapAll(Module &module);

  /**
   * Lower the MIR module to a LIR module
   * @param module MIR module
   * @param lower LIR module
   */
  void lower(Module &module, LIRModule &lowered);

  LIRValue *virtualReg(Value *def, LIRFunc *lowFunc);

private:
  std::unordered_map<Value *, LIRValue *> defMap;
  std::unordered_map<Function *, LIRFunc *> funcMap;
  std::unordered_map<BasicBlock *, LIRBB *> BBMap;
  LIRModule *lowModule;
};

} /* namespace nnvm::riscv */
