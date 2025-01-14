#include "Lower.h"
#include "Analysis/LoopAnalysis.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/StackSlot.h"
#include "IR/Constant.h"
#include "IR/Function.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "IR/Type.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <algorithm>
#include <queue>
using namespace nnvm;
using namespace nnvm::riscv;

static LIRValueType lowerType(Type *type) {
  LIRValueType ret;
  switch (type->getClass()) {
  case Type::Integer:
    switch (type->getBits()) {
    case 1:
      return LIRValueType::i1;
    case 8:
      return LIRValueType::i8;
    case 16:
      return LIRValueType::i16;
    case 32:
      return LIRValueType::i32;
    case 64:
      return LIRValueType::i64;
    default:
      nnvm_unreachable("Not implemented");
    }
  case Type::Pointer:
    return LIRValueType::i64;
  case Type::Float:
    return LIRValueType::Float;
  default:
    nnvm_unreachable("Not implemented");
  }
  return ret;
}

LIRValue *LowerHelper::virtualReg(Value *def, LIRFunc *lowFunc) {

  defMap[def] = lowModule->allocVReg(lowerType(def->getType()));
  return defMap[def];
}

void LowerHelper::lowerInst(LIRFunc *lowFunc, Instruction *I,
                            LIRBuilder &builder) {
  uint instType = (uint64_t)I->getOpcode();
  auto emit = [&builder](LIRInst *inst) { builder.addInst(inst); };

  switch (I->getOpcode()) {
  case InstID::Call: {
    auto *CI = cast<CallInst>(I);

    auto gprArgVec = getArgGPRs(lowFunc->getParent());
    auto fprArgVec = getArgFPRs(lowFunc->getParent());
    std::queue<Register *> availableArgGPR;
    std::queue<Register *> availableArgFPR;
    for (auto gpr : gprArgVec)
      availableArgGPR.push(gpr);
    for (auto fpr : fprArgVec)
      availableArgFPR.push(fpr);

    // TODO: variadic?
    if (Function *F = mayCast<Function>(CI->getCallee())) {
      bool hasRet = !F->getReturnType()->isVoid();
      uint argNum = F->getArguments().size();
      LIRInst *lowered = LIRInst::create(CALL, 1 + argNum + hasRet);
      lowered->setUse(0, funcMap[F]);

      StackSlot *outgoingArgFrame = lowFunc->allocStackSlot();
      outgoingArgFrame->setType(StackSlot::OutgoingArgFrame);

      uint outgoingArgSize = 0;

      for (uint i = 1; i < 1 + argNum; i++) {
        auto argVReg = defMap[CI->getOperand(i)];

        if (argVReg->isFP() && !availableArgFPR.empty()) {
          Register *argReg = availableArgFPR.front();
          availableArgFPR.pop();

          builder.copy(argVReg->as<Register>(), argReg);
          lowered->setUse(i, argReg);
        } else if (argVReg->isInteger() && !availableArgGPR.empty()) {
          Register *argReg = availableArgGPR.front();
          availableArgGPR.pop();

          builder.copy(argVReg->as<Register>(), argReg);
          lowered->setUse(i, argReg);
        } else {
          outgoingArgSize = alignWith(outgoingArgSize, argVReg->bytes());
          Register *pointerReg = builder.newVRegForPtr();
          builder.addInst(LIRInst::create(
              ADD, pointerReg, outgoingArgFrame,
              LIRConst::createInt(outgoingArgSize, LIRValueType::i64)));
          builder.storeValueTo(argVReg, pointerReg, argVReg->getType());
          lowered->setUse(i, argVReg);

          outgoingArgSize += argVReg->bytes();
        }
      }

      outgoingArgSize = alignWith(outgoingArgSize, getFrameAlign());
      outgoingArgFrame->setSize(outgoingArgSize);

      emit(lowered);

      if (hasRet) {
        Register *retReg;
        retReg = builder.phyReg(F->getReturnType()->isFloat() ? FA0 : A0);
        lowered->setDef(1 + argNum, retReg);
        builder.copy(retReg, defMap[I]->as<Register>());
      }

      return;
    }
    nnvm_unreachable("Not implemented");
  }

  case InstID::Br: {
    auto *BI = cast<BranchInst>(I);
    LIRBB *dest1 = BBMap[BI->getSucc(0)], *dest2;
    if (!BI->isConditional()) {
      emit(LIRInst::create(JAL, 2)
               ->setUse(0, builder.phyReg(ZERO))
               ->setUse(1, dest1));
    } else {
      dest2 = BBMap[BI->getSucc(1)];
      emit(LIRInst::create(BNE, 3)
               ->setUse(0, defMap[BI->getOperand(0)])
               ->setUse(1, builder.phyReg(ZERO))
               ->setUse(2, dest1));
      emit(LIRInst::create(JAL, 2)
               ->setUse(0, builder.phyReg(ZERO))
               ->setUse(1, dest2));
    }
    break;
  }

  case InstID::ICmp: {
    ICmpInst *CI = cast<ICmpInst>(I);

    auto lowered = LIRInst::create((uint64_t)InstID::ICmp, 4);
    lowered->setDef(0, defMap[CI])
        ->setUse(1, defMap[CI->getOperand(0)])
        ->setUse(2, defMap[CI->getOperand(1)])
        // NOTE: A hole, we put the predicate of into the 4th operand.
        ->setUse(3, LIRImm::create(CI->getPredicate()));
    emit(lowered);
    break;
  }

  case InstID::FCmp: {
    FCmpInst *CI = cast<FCmpInst>(I);

    auto lowered = LIRInst::create((uint64_t)InstID::FCmp, 4);
    lowered->setDef(0, defMap[CI])
        ->setUse(1, defMap[CI->getOperand(0)])
        ->setUse(2, defMap[CI->getOperand(1)])
        // NOTE: A hole, we put the predicate of into the 4th operand.
        ->setUse(3, LIRImm::create(CI->getPredicate()));
    emit(lowered);
    break;
  }

  case InstID::Ret: {
    bool isFloatPoint = false;
    if (I->getOperandNum() != 0) {
      Value *returned = I->getOperand(0);
      isFloatPoint |= returned->getType()->isFloat();
      // Move returned value to a0.
      builder.copy(defMap[returned], builder.phyReg(isFloatPoint ? FA0 : A0));
    }

    LIRInst *inst;
    if (I->getOperandNum() != 0) {
      inst = LIRInst::create(JALR, 4)
                 ->setUse(0, builder.phyReg(ZERO))
                 ->setUse(1, builder.phyReg(RA))
                 ->setUse(2, LIRImm::create(0))
                 ->setUse(3, builder.phyReg(isFloatPoint ? FA0 : A0));
    } else {
      inst = LIRInst::create(JALR, builder.phyReg(ZERO), builder.phyReg(RA),
                             LIRImm::create(0));
    }
    emit(inst);
    break;
  }

  case InstID::Store: {
    auto *newInst = LIRInst::createAllUse(
        getStoreInstType(lowerType(I->getOperand(0)->getType())),
        defMap[I->getOperand(0)], defMap[I->getOperand(1)], LIRImm::create(0));
    emit(newInst);
    break;
  }

  case InstID::Stack: {
    uint64_t size = cast<StackInst>(I)->getAllocatedBytes();
    StackSlot *slot = lowFunc->allocStackSlot(size);
    defMap[I] = slot;
    slot->setAlign(std::min(getMaxMemAlign(), size));
    break;
  }

  case InstID::Unreachable: {
    emit(LIRInst::create(UNIMP, 0));
    break;
  }

  default:
    LIRInst *lowInst = LIRInst::create(instType, I->getOperandNum() + 1);

    assert(I->getType() && !I->getType()->isVoid() && "Unimplemented");

    lowInst->setDef(0, defMap[I]);
    for (int i = 0; i < I->getOperandNum(); i++)
      lowInst->setUse(i + 1, defMap[I->getOperand(i)]);

    emit(lowInst);
    break;
  }
}

static std::vector<std::byte> breakIntoBytes(nnvm::Constant *constant) {
  uint numBytes = constant->getType()->getStoredBytes();
  std::vector<std::byte> ret(numBytes);

  if (auto *constantArr = mayCast<ConstantArray>(constant)) {
    uint index = 0;
    for (nnvm::Constant *element : constantArr->getValue()) {
      std::vector<std::byte> elementData = breakIntoBytes(element);
      std::copy(elementData.begin(), elementData.end(), ret.begin() + index);
      index += elementData.size();
    }
    return ret;
  }

  // For those less than 8 bytes.
  GInt value;
  if (auto *constantInt = mayCast<ConstantInt>(constant)) {
    // For i1, zero-extended
    if (constantInt->getType()->isIntegerNBits(1))
      value = constantInt->getValue() & 1;
    else
      value = constantInt->getValue();
  } else if (auto *constantFloat = mayCast<ConstantFloat>(constant)) {
    float floatVal = constantFloat->getValue();
    value = reinterpret_cast<const uint32_t &>(floatVal);
  } else {
    nnvm_unimpl();
  }

  for (int i = 0; i < numBytes; i++) {
    ret[i] = (std::byte)(value & 0xFF);
    value >>= 8;
  }

  return ret;
}

void LowerHelper::mapAll(Module &module) {
  // Map the trivial constants.
  for (auto &[hash, constant] : module.getConstantPool()) {

    if (ConstantInt *CI = mayCast<ConstantInt>(constant)) {
      GInt value;
      // For i1, zero-extended
      if (CI->getType()->isIntegerNBits(1))
        value = CI->getValue() & 1;
      else
        value = CI->getValue();

      defMap[constant] = LIRConst::createInt(value, lowerType(CI->getType()));
    }

    if (ConstantFloat *CF = mayCast<ConstantFloat>(constant))
      defMap[constant] = LIRConst::createFloat(CF->getValue());
  }

  // Map global variables and the complex constants.
  for (auto &[name, var] : module.getGlobalVarMap()) {
    LIRGlobalVar *lowVar = new LIRGlobalVar;
    lowVar->name = name;
    lowVar->size = var->getInnerType()->getStoredBytes();
    lowVar->isAllZeros = false;

    if (auto allZeros = mayCast<ConstantAllZeros>(var->getInitVal()))
      lowVar->isAllZeros = true;
    else
      lowVar->data = breakIntoBytes(var->getInitVal());

    defMap[var] = lowVar;
  }

  // Map UB values
  for (UBValue *ubval : UBValue::allUBValues())
    defMap[ubval] = LIRUBValue::get(lowerType(ubval->getType()));

  for (auto &[name, func] : module.getFunctionMap()) {
    LIRFunc *lowFunc = new LIRFunc();
    lowFunc->name = name;
    lowFunc->isExternal = func->isExternal();
    funcMap[func] = lowFunc;
    lowModule->insert(lowFunc);

    // Don't lower external functions.
    if (func->isExternal())
      continue;

    LIRBB *LIREntry;
    for (BasicBlock *BB : *func) {
      LIRBB *lowBB = new LIRBB;
      if (BB == func->getEntry())
        LIREntry = lowBB;
      // TODO: map BB as Value.
      BBMap[BB] = lowBB;
      defMap[BB] = lowBB;
      lowFunc->insert(lowBB);

      for (Instruction *I : *BB)
        if (I->getType() && !I->getType()->isVoid())
          defMap[I] = this->lowModule->allocVReg(lowerType(I->getType()));
    }

    auto gprArgVec = getArgGPRs(lowModule);
    auto fprArgVec = getArgFPRs(lowModule);

    std::queue<Register *> availableArgGPR;
    std::queue<Register *> availableArgFPR;
    for (auto gpr : gprArgVec)
      availableArgGPR.push(gpr);
    for (auto fpr : fprArgVec)
      availableArgFPR.push(fpr);

    LIRBuilder builder(*(this->lowModule));
    builder.setInsertPoint(LIREntry->end());

    StackSlot *incomingArgFrame = lowFunc->allocStackSlot();
    incomingArgFrame->setType(StackSlot::IncomingArgFrame);
    uint64_t incomingArgSize = 0;

    for (int i = 0; i < func->getArguments().size(); i++) {
      Argument *arg = func->getArguments()[i];
      Register *argReg = builder.newVReg(lowerType(arg->getType()));
      defMap[arg] = argReg;

      if (arg->getType()->isFloat() && !availableArgFPR.empty()) {
        builder.copy(availableArgFPR.front(), argReg);
        availableArgFPR.pop();
      } else if (arg->getType()->isIntegerOrPtr() && !availableArgGPR.empty()) {
        builder.copy(availableArgGPR.front(), argReg);
        availableArgGPR.pop();
      } else {
        uint64_t align = argReg->bytes();
        incomingArgSize = alignWith(incomingArgSize, align);

        Register *pointerReg = builder.newVRegForPtr();
        builder.addInst(LIRInst::create(
            ADD, pointerReg, incomingArgFrame,
            LIRConst::createInt(incomingArgSize, pointerReg->getType())));
        builder.loadValueFrom(argReg, pointerReg, argReg->getType());

        incomingArgSize += argReg->bytes();
      }
    }

    incomingArgSize = alignWith(incomingArgSize, getFrameAlign());
    incomingArgFrame->setSize(incomingArgSize);
  }
}

void LowerHelper::lower(Module &module, LIRModule &lowered) {
  lowModule = &lowered;
  mapAll(module);

  for (auto &[name, var] : module.getGlobalVarMap())
    lowered.globals.push_back(defMap[var]->as<LIRGlobalVar>());

  LIRBuilder builder(lowered);
  for (auto &[func, lowFunc] : funcMap) {
    assignDepth(*func);
    // Lower basic blocks.
    for (BasicBlock *BB : *func) {
      LIRBB *lowBB = BBMap[BB];
      lowBB->setLoopDepth(loopDepth.count(BB) ? loopDepth[BB] : 0);

      builder.setInsertPoint(lowBB->end());
      for (Instruction *I : *BB)
        lowerInst(lowFunc, I, builder);
    }
  }
}

void LowerHelper::assignDepth(Function &F) {
  if (F.isExternal())
    return;

  LoopAnalysis loopAnalysis;
  loopAnalysis.run(F);

  for (Loop *loop : loopAnalysis.getLoops()) {
    for (BasicBlock *block : loop->getBlocks()) {
      if (!loopDepth.count(block))
        loopDepth[block] = loop->getDepth();
    }
  }
}
