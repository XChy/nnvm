#include "Lower.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "IR/Function.h"
#include "IR/Instruction.h"
#include "IR/Type.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <queue>
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

LowOperand LowerHelper::virtualReg(Value *def, LowFunc *lowFunc) {
  LowOperand lowOperand{
      .type = LowOperand::VirtualRegister,
      .valueType = lowerType(def->getType()),
      .flag = LowOperand::Def,
      .regId = lowFunc->allocVRegID(),
  };
  defMap[def] = lowOperand;
  return lowOperand;
}

static LowOperand gpr(uint index, Type *type) {
  return LowOperand{
      .type = LowOperand::GPRegister,
      .valueType = lowerType(type),
      .flag = LowOperand::Def,
      .regId = index,
  };
}

static LowOperand fpr(uint index, Type *type) {
  return LowOperand{
      .type = LowOperand::FPRegister,
      .valueType = lowerType(type),
      .flag = LowOperand::Def,
      .regId = index,
  };
}

void LowerHelper::lowerInst(LowFunc *lowFunc, Instruction *I,
                            std::list<LowInst> &instList) {
  uint instType = (uint64_t)I->getOpcode();
  auto emit = [&instList](const LowInst &inst) { instList.push_back(inst); };

  switch (I->getOpcode()) {
  case InstID::Call: {
    auto *CI = cast<CallInst>(I);
    std::vector<LowOperand> operands;

    auto gprArgVec = getArgGPRs();
    auto fprArgVec = getArgFPRs();
    std::queue<uint64_t> availableArgGPR;
    std::queue<uint64_t> availableArgFPR;
    for (auto gpr : gprArgVec)
      availableArgGPR.push(gpr);
    for (auto fpr : fprArgVec)
      availableArgFPR.push(fpr);

    // TODO: variadic?
    if (Function *F = dyn_cast<Function>(CI->getCallee())) {
      operands.push_back(LowOperand::function(funcMap[F]));
      for (int i = 1; i < CI->getOperandNum(); i++) {
        auto argVReg = defMap[CI->getOperand(i)].use();

        if (argVReg.valueType == LowOperand::Float && !fprArgVec.empty()) {
          LowOperand argReg =
              LowOperand::fpr(availableArgFPR.front(), argVReg.valueType).use();
          availableArgFPR.pop();

          nnvm_unreachable("Not implemented");
          emit(LowInst::create(ADD, argReg, argVReg,
                               getZeroReg(argVReg.valueType)));
          operands.push_back(argReg);
        } else if (!gprArgVec.empty()) {
          LowOperand argReg =
              LowOperand::gpr(availableArgGPR.front(), argVReg.valueType).use();
          availableArgGPR.pop();

          emit(LowInst::create(ADD, argReg, argVReg,
                               getZeroReg(argVReg.valueType)));
          operands.push_back(argReg);
        } else {
          // TODO: demote to stack
          nnvm_unreachable("Not implemented")
        }
      }
      emit(LowInst{CALL, operands});

      if (F->getReturnType()->getClass() != Type::Void) {
        emit(LowInst::create(ADD, defMap[I], gpr(A0, CI->getType()),
                             getZeroReg(defMap[I].valueType)));
      }
      return;
    }
    nnvm_unreachable("Not implemented");
  }
  case InstID::Br: {
    auto *BI = cast<BranchInst>(I);
    if (!BI->isConditional()) {
      emit(LowInst{JAL,
                   {getZeroReg(LowOperand::i64).use(),
                    LowOperand::label(BBMap[BI->getSucc(0)])}});
    } else {
      emit(LowInst{BNE,
                   {defMap[BI->getOperand(0)].use(),
                    getZeroReg(LowOperand::i64).use(),
                    LowOperand::label(BBMap[BI->getSucc(0)])}});

      emit(LowInst{JAL,
                   {getZeroReg(LowOperand::i64).use(),
                    LowOperand::label(BBMap[BI->getSucc(1)])}});
    }
    break;
  }
  case InstID::ICmp: {
    ICmpInst *CI = cast<ICmpInst>(I);

    auto lowered =
        LowInst::create((uint64_t)InstID::ICmp, defMap[CI],
                        defMap[CI->getOperand(0)], defMap[CI->getOperand(1)]);
    lowered.operand.push_back(LowOperand::imm(CI->getPredicate()));
    emit(lowered);
    break;
  }
  case InstID::Ret: {
    if (I->getOperandNum() != 0) {
      Value *returned = I->getOperand(0);
      emit(LowInst::create(ADD, getRetReg(lowerType(returned->getType())),
                           defMap[returned],
                           getZeroReg(lowerType(returned->getType()))));
    }
    auto inst = LowInst::create(JALR, getZeroReg(LowOperand::i64),
                                getRAReg(LowOperand::i64), LowOperand::imm(0));
    // Implicit use of "a0/f0"
    if (I->getOperandNum() != 0) {
      inst.operand.push_back(
          getRetReg(lowerType(I->getOperand(0)->getType())).use());
    }
    emit(inst);
    break;
  }
  case InstID::Stack: {
    uint64_t size = cast<StackInst>(I)->getAllocatedBytes();
    defMap[I] = LowOperand::stackSlot(lowFunc->allocStackSlot(size)).def();
    break;
  }
  default:
    LowInst lowInst;
    lowInst.type = instType;

    if (I->getType())
      lowInst.operand.push_back(defMap[I].def());
    for (int i = 0; i < I->getOperandNum(); i++)
      lowInst.operand.push_back(defMap[I->getOperand(i)].use());

    emit(lowInst);
    break;
  }
}

static std::vector<std::byte> breakIntoBytes(Constant *constant) {
  uint numBytes = constant->getType()->getStoredBytes();
  std::vector<std::byte> ret(numBytes);

  if (auto *constantInt = dyn_cast<ConstantInt>(constant)) {
    GInt value = constantInt->getValue();
    for (int i = 0; i < numBytes; i++) {
      ret[i] = (std::byte)(value & 0xFF);
      value >>= 8;
    }
    return ret;
  }
  nnvm_unreachable("Not implemented");
}

void LowerHelper::mapAll(Module &module) {
  for (auto &[hash, constant] : module.getConstantPool()) {
    if (ConstantInt *CI = dyn_cast<ConstantInt>(constant))
      defMap[constant] = LowOperand{
          .type = LowOperand::Constant,
          .valueType = lowerType(CI->getType()),
          .flag = LowOperand::Use,
          .lastUsed = false,
          .immValue = CI->getValue(),
      };
  }

  for (auto &[name, var] : module.getGlobalVarMap()) {
    LowGlobalVar *lowVar = new LowGlobalVar;
    lowVar->name = name;
    if (var->getInitVal())
      lowVar->data = breakIntoBytes(var->getInitVal());
    lowVar->size = var->getInnerType()->getStoredBytes();

    defMap[var] = LowOperand{
        .type = LowOperand::GlobalVar,
        .valueType = LowOperand::i64,
        .flag = LowOperand::Use,
        .lastUsed = false,
        .var = lowVar,
    };
  }

  for (auto &[name, func] : module.getFunctionMap()) {
    LowFunc *lowFunc = new LowFunc;
    lowFunc->name = name;
    lowFunc->isExternal = func->isExternal();
    funcMap[func] = lowFunc;

    auto gprArgVec = getArgGPRs();
    auto fprArgVec = getArgFPRs();

    std::queue<uint64_t> availableArgGPR;
    std::queue<uint64_t> availableArgFPR;
    for (auto gpr : gprArgVec)
      availableArgGPR.push(gpr);
    for (auto fpr : fprArgVec)
      availableArgFPR.push(fpr);

    for (int i = 0; i < func->getArguments().size(); i++) {
      Argument *arg = func->getArguments()[i];
      if (arg->getType()->getClass() == Type::Float && !fprArgVec.empty()) {
        defMap[arg] = fpr(availableArgFPR.front(), arg->getType());
        availableArgFPR.pop();
      } else if (!gprArgVec.empty()) {
        defMap[arg] = gpr(availableArgGPR.front(), arg->getType());
        availableArgGPR.pop();
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
        if (I->getType() && !I->getType()->isVoid())
          defMap[I] = virtualReg(I, lowFunc);
    }
  }
}

void LowerHelper::lower(Module &module, LowModule &lowered) {
  mapAll(module);

  for (auto &[name, var] : module.getGlobalVarMap())
    lowered.globals.push_back(defMap[var].var);

  for (auto &[name, func] : module.getFunctionMap()) {
    LowFunc *lowFunc = funcMap[func];
    lowered.funcs.push_back(lowFunc);

    // Lower basic blocks.
    for (BasicBlock *BB : *func) {
      LowBB *lowBB = BBMap[BB];
      lowFunc->BBs.push_back(lowBB);

      for (Instruction *I : *BB)
        lowerInst(lowFunc, I, lowBB->insts);
    }
  }

  // Lower functions.
}
