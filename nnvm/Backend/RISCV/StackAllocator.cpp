#include "StackAllocator.h"
#include "ADT/GenericInt.h"
#include "ADT/PatternMatch.h"
#include "Backend/RISCV/Analysis/NearbyRegAnalysis.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include "StackSlot.h"
#include "Utils/Debug.h"
#include <unordered_set>
using namespace nnvm::riscv;

void RegClearer::clear(LIRFunc &func,
                       std::unordered_map<uint64_t, uint64_t> &vregNum) {

  // NOTE: now it can only handle one use of virtual register
  for (auto *bb : func) {
    for (auto *I : *bb) {
      for (LowOperand &op : I->operands) {

        if (op.getOperand()->isVReg()) {
          auto freeRegs = NearbyRegAnalysis(func, *bb, I).getFreeRegs();

          if (!freeRegs.empty()) {
            // TODO: float-point ?
            op.set(freeRegs.front());
            continue;
          } else {
            nnvm_unimpl();
          }
        }

        // TODO: make use of emergency slot properly.
      }
    }
  }
}

StackAllocator::FunctionStackInfo
StackAllocator::calculateStackInfo(LIRFunc &func) {
  FunctionStackInfo ret;
  std::set<uint64_t> usedRegs;

  for (LIRBB *bb : func) {
    for (LIRInst *inst : *bb) {

      ret.isCaller |= inst->type == CALL;

      if (match(inst, pattern::pRet()))
        ret.exitBBs.push_back(bb);
    }
  }

  if (ret.isCaller) {
    auto *slot = func.allocStackSlot();
    slot->setType(StackSlot::CalleeSaved);
    slot->setSize(8);
    slot->setReg(func.getParent()->getPhyReg(RA));
  }

  return ret;
}

bool StackAllocator::resolveSlotRef(LIRBuilder &builder, LIRInst *it,
                                    uint64_t slotOperandIndex) {
  LIRValue *operand = it->getOp(slotOperandIndex);
  if (operand->isStackSlot()) {

    uint64_t offset = operand->as<StackSlot>()->getOffset();
    if ((it->type > I_BEGIN && it->type < I_END) ||
        (it->type > S_BEGIN && it->type < S_END)) {
      if (canExpressInBits<11>(offset)) {
        it->setUse(slotOperandIndex, builder.phyReg(SP));
        it->setUse(slotOperandIndex + 1, LIRImm::create(offset));
        return true;
      }
    }

    debug(std::cerr << "offset of stack "
                    << operand->as<StackSlot>()->getIndex() << " is "
                    << operand->as<StackSlot>()->getOffset() << " "
                    << slotOperandIndex << "\n");

    builder.setInsertPoint(it);
    auto addressRegister = builder.newVReg(LIRValueType::i64);
    loadRegPlusConstantToReg(builder, builder.phyReg(SP),
                             LIRConst::createInt(offset, LIRValueType::i64),
                             addressRegister);
    it->setUse(slotOperandIndex, addressRegister);
  }
  return true;
}

static inline bool needEmergencySlot(LIRFunc &func) {
  uint64_t currentFrameSize = 0;
  for (auto *slot : func.getStackSlots()) {
    currentFrameSize += slot->getSize();
  }
  currentFrameSize = (currentFrameSize + getFrameAlign() - 1) /
                     getFrameAlign() * getFrameAlign();
  return !canExpressInBits<11>(currentFrameSize);
}

void StackAllocator::allocate(LIRFunc &func) {
  this->func = &func;


  stackInfo = calculateStackInfo(func);

  frameSize = 0;
  // TODO: Increase number of emergency slots if necessary?
  uint64_t numEmergencySlots = needEmergencySlot(func) ? 1 : 0;
  frameSize += numEmergencySlots * 8;

  for (auto *slot : func.getStackSlots()) {
    slot->setOffset(frameSize);
    frameSize += slot->getSize();
  }

  frameSize =
      (frameSize + getFrameAlign() - 1) / getFrameAlign() * getFrameAlign();

  LIRBuilder builder(*func.getParent());

  emitPrologue(builder, func);
  emitEpilogue(builder, func);

  for (auto *bb : func)
    for (auto *inst : *bb)
      for (int i = 0; i < inst->getNumOp(); i++)
        if (inst->getOp(i)->isStackSlot())
          resolveSlotRef(builder, inst, i);

  clearer.clear(func, vregNum);
}

void StackAllocator::emitPrologue(LIRBuilder &builder, LIRFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  auto bodyBegin = func.getEntry()->begin();
  builder.setInsertPoint(bodyBegin);
  auto *addFrame = LIRInst::create(ADDI, builder.phyReg(SP), builder.phyReg(SP),
                                   LIRImm::create(-frameSize));
  builder.addInst(addFrame);

  for (StackSlot *slot : func.getStackSlots()) {
    if (slot->getType() == StackSlot::CalleeSaved) {
      builder.setInsertPoint(bodyBegin);
      builder.storeValueToSlot(slot->getReg(), slot, slot->getReg()->getType());
    } else if (slot->getType() == StackSlot::CallerSaved) {
      // for (auto *bb : func)
      // for (auto *inst : *bb) {
      // if (inst->getOpcode() == CALL) {
      // builder.setInsertPoint(inst);
      // builder.storeValueToSlot(slot->getReg(), slot,
      // slot->getReg()->getType());
      //}
      //}
    } else {
      // TODO: spill?
      // nnvm_unimpl();
    }
  }
}

void StackAllocator::emitEpilogue(LIRBuilder &builder, LIRFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  for (LIRBB *bb : stackInfo.exitBBs) {
    builder.setInsertPoint(bb->getInsts().getLast());

    for (StackSlot *slot : func.getStackSlots()) {
      if (slot->getType() == StackSlot::CalleeSaved) {
        builder.addInst(
            LIRInst::create(LD, slot->getReg(), slot, LIRImm::create(0)));
      }
    }

    builder.addInst(LIRInst::create(ADDI, builder.phyReg(SP),
                                    builder.phyReg(SP),
                                    LIRImm::create(frameSize)));
  }
}
