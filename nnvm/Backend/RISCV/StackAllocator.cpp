#include "StackAllocator.h"
#include "ADT/GenericInt.h"
#include "ADT/PatternMatch.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/Analysis/LiveIntervalAnalysis.h"
#include "Backend/RISCV/Analysis/NearbyRegAnalysis.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/ISel.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include "StackSlot.h"
#include "Utils/Debug.h"
#include <vector>
using namespace nnvm::riscv;

void RegClearer::clear(LIRFunc &func,
                       std::unordered_map<uint64_t, uint64_t> &vregNum) {
  // NOTE: now it can only handle one use of virtual register
  int scratchIndex = 0;

  std::vector<Register *> scratches;
  std::vector<Register *> fscratches;
  for (Register *reg : getScratchRegs(func.getParent()))
    scratches.push_back(reg);

  for (auto *bb : func) {
    for (auto *I : *bb) {
      for (LowOperand &op : I->operands) {

        if (op.getOperand()->isVReg()) {
          auto freeRegs = NearbyRegAnalysis(func, *bb, LIRBB::Iterator(I, bb))
                              .getFreeRegs();

          // TODO: floating-point ?
          assert(op.getOperand()->isInteger());
          if (!freeRegs.empty() &&
              !calleeSavedRegs().count(freeRegs.front()->getRegId()) &&
              freeRegs.front()->isInteger()) {
            op.getOperand()->replaceWith(freeRegs.front());
          } else {
            op.getOperand()->replaceWith(scratches[scratchIndex]);
            scratchIndex = (scratchIndex + 1) % scratches.size();
          }
        }
      }
    }
  }
}

StackAllocator::FunctionStackInfo
StackAllocator::calculateStackInfo(LIRFunc &func) {
  FunctionStackInfo ret;

  for (LIRBB *bb : func) {
    for (LIRInst *inst : *bb) {
      if (match(inst, pattern::pRet()))
        ret.exitBBs.push_back(bb);
    }
  }

  return ret;
}

StackAllocator::StackAllocator() {}

bool StackAllocator::resolveSlotRef(LIRBuilder &builder, LIRBB::Iterator iter,

                                    uint64_t slotOperandIndex) {
  LIRInst *inst = *iter;
  LIRValue *operand = inst->getOp(slotOperandIndex);
  if (operand->isStackSlot()) {

    uint64_t offset = operand->as<StackSlot>()->getOffset();
    // lw dst, imm(stack)  -->  lw dst, imm1(sp)
    if (slotOperandIndex == 1 &&
        ((inst->type > I_BEGIN && inst->type < I_END) ||
         (inst->type > S_BEGIN && inst->type < S_END))) {
      LIRImm *imm = inst->getOp(slotOperandIndex + 1)->as<LIRImm>();
      if (canExpressInBits<12>(offset + imm->getValue())) {
        inst->setUse(slotOperandIndex, builder.phyReg(SP));
        inst->setUse(slotOperandIndex + 1,
                     LIRImm::create(offset + imm->getValue()));
        return true;
      }
    }

    builder.setInsertPoint(iter);
    auto addressRegister = builder.newVRegForPtr();
    builder.loadRegPlusConstantToReg(
        builder.phyReg(SP), LIRConst::createInt(offset, LIRValueType::i64),
        addressRegister);
    inst->setUse(slotOperandIndex, addressRegister);
  }
  return true;
}

void StackAllocator::allocate(LIRFunc &func) {
  this->func = &func;

  scratchReg = *getScratchRegs(func.getParent()).begin();
  clearer.setScratchReg(scratchReg);

  orderSlots(func);
  LIRBuilder builder(*func.getParent());

  emitPrologue(builder, func);
  emitEpilogue(builder, func);
  replaceAllSlotRefs(builder, func);

  clearer.clear(func, vregNum);
}

void StackAllocator::orderSlots(LIRFunc &func) {

  stackInfo = calculateStackInfo(func);
  frameSize = 0;

  StackSlot *incomingSlot = nullptr;
  StackSlot *outgoingSlot = nullptr;

  slots = func.getStackSlots();

  // Pick the largest outgoing frame.
  for (auto *slot : slots) {
    if (slot->getType() != StackSlot::OutgoingArgFrame)
      continue;
    if (!outgoingSlot) {
      outgoingSlot = slot;
    } else if (slot->getSize() > outgoingSlot->getSize()) {
      outgoingSlot->replaceWith(slot);
      outgoingSlot->setType(StackSlot::Unused);
      outgoingSlot = slot;
    } else {
      slot->replaceWith(outgoingSlot);
      slot->setType(StackSlot::Unused);
    }
  }

  if (outgoingSlot) {
    outgoingSlot->setOffset(0);
    frameSize += outgoingSlot->getSize();
  }
  // std::cerr << "Outgoing frame: size: " << frameSize << "\n";

  std::sort(slots.begin(), slots.end(), [](StackSlot *A, StackSlot *B) {
    if (A->getType() == StackSlot::CalleeSaved &&
        B->getType() == StackSlot::CalleeSaved)
      return A->getReg()->getRegId() < B->getReg()->getRegId();
    return A->getAlign() < B->getAlign();
  });

  for (auto *slot : slots) {
    if (slot->getType() == StackSlot::IncomingArgFrame) {
      incomingSlot = slot;
      continue;
    }

    if (slot->getType() == StackSlot::Unused ||
        slot->getType() == StackSlot::OutgoingArgFrame)
      continue;

    frameSize = alignWith(frameSize, slot->getAlign());
    slot->setOffset(frameSize);
    frameSize += slot->getSize();
  }

  frameSize = alignWith(frameSize, getFrameAlign());
  incomingSlot->setOffset(frameSize);
}

void StackAllocator::emitPrologue(LIRBuilder &builder, LIRFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  auto bodyBegin = func.getEntry()->begin();
  builder.setInsertPoint(bodyBegin);
  builder.loadRegPlusConstantToReg(
      builder.phyReg(SP), LIRConst::createInt(-frameSize, LIRValueType::i64),
      builder.phyReg(SP), builder.phyReg(T0));

  for (StackSlot *slot : slots) {
    if (slot->getType() == StackSlot::CalleeSaved) {
      builder.setInsertPoint(bodyBegin);
      builder.storeValueTo(slot->getReg(), slot, slot->getReg()->getType());
    } else {
      // TODO: spill?
      // nnvm_unimpl();
    }
  }
}

void StackAllocator::emitEpilogue(LIRBuilder &builder, LIRFunc &func) {
  for (LIRBB *bb : stackInfo.exitBBs) {
    builder.setInsertPoint(bb, bb->getInsts().getLast());

    for (StackSlot *slot : slots) {
      if (slot->getType() == StackSlot::CalleeSaved) {
        builder.loadValueFrom(slot->getReg(), slot, slot->getReg()->getType());
      }
    }

    builder.loadRegPlusConstantToReg(
        builder.phyReg(SP), LIRConst::createInt(frameSize, LIRValueType::i64),
        builder.phyReg(SP), builder.phyReg(T0));
  }
}

void StackAllocator::replaceAllSlotRefs(LIRBuilder &builder, LIRFunc &func) {
  for (auto *bb : func)
    for (auto *inst : *bb)
      for (int i = 0; i < inst->getNumOp(); i++)
        if (inst->getOp(i)->isStackSlot())
          resolveSlotRef(builder, LIRBB::Iterator(inst, bb), i);
}
