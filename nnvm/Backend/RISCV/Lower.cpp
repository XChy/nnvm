#include "Lower.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "IR/Function.h"
#include "IR/Instruction.h"
#include "IR/Type.h"
#include "Utils/Cast.h"
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

static LowOperand gpr(uint index, Type *type) {
  return LowOperand{
      .type = LowOperand::GPRegister,
      .valueType = lowerType(type),
      .flag = LowOperand::Def,
      .registerIndex = index,
  };
}

void LowerHelper::lowerInst(Instruction *I, std::list<LowInst> &instList) {
  uint instType = (uint64_t)I->getOpcode();
  auto emit = [&instList](const LowInst &inst) { instList.push_back(inst); };

  switch (I->getOpcode()) {
  case InstID::Call:
  case InstID::Br:
    break;
  case InstID::Ret:
    if (Value *returned = I->getOperand(0)) {
      emit({LowInst::RET, {virtualReg(returned)}});
    } else {
      emit({LowInst::RET, {LowOperand::none()}});
    }
    break;
  case InstID::Stack:
    emit({(LowInst::LowInstType)InstID::Stack,
          {defMap[I],
           LowOperand::imm(cast<StackInst>(I)->getAllocatedBytes())}});
    break;
  default:
    LowInst lowInst;
    lowInst.type = instType;

    if (I->getType())
      lowInst.operand.push_back(defMap[I]);
    for (int i = 0; i < I->getOperandNum(); i++)
      lowInst.operand.push_back(defMap[I->getOperand(i)]);

    emit(lowInst);
  }
}

void LowerHelper::mapAll(Module &module) {
  for (auto &[name, func] : module.getFunctionMap()) {
    LowFunc *lowFunc = new LowFunc;
    lowFunc->name = name;
    funcMap[func] = lowFunc;

    auto availableArgRegs = getRegsForArg();
    for (int i = 0; i < func->getArguments().size(); i++) {
      if (i < availableArgRegs.size()) {
        Argument *arg = func->getArguments()[i];
        defMap[arg] = gpr(availableArgRegs[i], arg->getType());
      } else {
        // TODO: demote to stack
        nnvm_unreachable("Not implemented")
      }
    }

    for (BasicBlock *BB : *func) {
      LowBB *lowBB = new LowBB;
      // TODO: map BB as Value.
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

      for (Instruction *I : *BB)
        lowerInst(I, lowBB->insts);
    }
  }

  // Lower functions.
}
