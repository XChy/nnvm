#include "Lower.h"
#include "Backend/RISCV/LowIR.h"
#include "IR/Function.h"
#include "IR/Instruction.h"
#include "IR/Type.h"
using namespace nnvm;
using namespace nnvm::riscv;

static LowOperand::LowValueType lowerType(Type *type) {
  LowOperand::LowValueType ret;
  switch (type->getClass()) {
  case Type::Integer:
    switch (type->getScalarBits()) {
    case 1:
      return LowOperand::i1;
    case 8:
      return LowOperand::i8;
    case 16:
      return LowOperand::i16;
    case 32:
      return LowOperand::i32;
    case 64:
      return LowOperand::i64;
    default:
      nnvm_unreachable("Not implemented");
    }
  case Type::Pointer:
    return LowOperand::i64;
  case Type::Float:
    return LowOperand::Float;
  default:
    nnvm_unreachable("Not implemented");
  }
  return ret;
}

LowOperand LowerHelper::virtualReg(Value *def) {
  LowOperand lowOperand{
      .type = LowOperand::VirtualRegister,
      .valueType = lowerType(def->getType()),
      .flag = LowOperand::Def,
      .registerIndex = virtualRegNum,
  };
  defMap[def] = lowOperand;
  virtualRegNum++;
  return lowOperand;
}

LowInst LowerHelper::lowerInst(Instruction *I) {
  LowInst lowInst;
  if (I->getOpcode() > InstID::BINOP_BEGIN &&
      I->getOpcode() > InstID::BINOP_END) {
  }
  return lowInst;
}

void LowerHelper::mapAll(Module &module) {
  for (auto &[name, func] : module.getFunctionMap()) {
    LowFunc *lowFunc = new LowFunc;
    lowFunc->name = name;
    funcMap[func] = lowFunc;

    for (Argument *arg : func->getArguments())
      defMap[arg] = virtualReg(arg);

    for (BasicBlock *BB : *func) {
      LowBB *lowBB = new LowBB;
      BBMap[BB] = lowBB;

      for (Instruction *I : *BB)
        if (I->getType())
          defMap[I] = virtualReg(I);
    }
  }
}

void LowerHelper::lower(Module &module, LowModule &lowered) {
  // TODO: map and lower global variables.
  mapAll(module);
  for (auto &[name, func] : module.getFunctionMap()) {
    LowFunc *lowFunc = funcMap[func];
    lowered.funcs.push_back(lowFunc);

    // Lower basic blocks.
    for (BasicBlock *BB : *func) {
      LowBB *lowBB = BBMap[BB];
      lowFunc->BBs.push_back(lowBB);

      for (Instruction *I : *BB) {
        lowBB->insts.push_back(lowerInst(I));
      }
    }
  }

  // Lower functions.
}
