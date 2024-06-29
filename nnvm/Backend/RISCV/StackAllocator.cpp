#include "StackAllocator.h"
#include "ADT/GenericInt.h"
#include "ADT/PatternMatch.h"
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
  for (Register *reg : getScratchRegs(func.getParent()))
    scratches.push_back(reg);

  for (auto *bb : func) {
    for (auto *I : *bb) {
      for (LowOperand &op : I->operands) {

        if (op.getOperand()->isVReg()) {
          auto freeRegs = NearbyRegAnalysis(func, *bb, LIRBB::Iterator(I, bb))
                              .getFreeRegs();

          // TODO: floating-point ?
          if (op.getOperand()->getType() == LIRValueType::Float)
            nnvm_unimpl();

          if (!freeRegs.empty() &&
              !calleeSavedRegs().count(freeRegs.front()->getRegId())) {
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
      if (canExpressInBits<11>(offset + imm->getValue())) {
        inst->setUse(slotOperandIndex, builder.phyReg(SP));
        inst->setUse(slotOperandIndex + 1,
                     LIRImm::create(offset + imm->getValue()));
        return true;
      }
    }

    debug(std::cerr << "offset of stack "
                    << operand->as<StackSlot>()->getIndex() << " is "
                    << operand->as<StackSlot>()->getOffset() << " "
                    << slotOperandIndex << "\n");

    builder.setInsertPoint(iter);
    auto addressRegister = builder.newVReg(LIRValueType::i64);
    loadRegPlusConstantToReg(builder, builder.phyReg(SP),
                             LIRConst::createInt(offset, LIRValueType::i64),
                             addressRegister);
    inst->setUse(slotOperandIndex, addressRegister);
  }
  return true;
}

void StackAllocator::allocate(LIRFunc &func) {
  this->func = &func;

  scratchReg = *getScratchRegs(func.getParent()).begin();
  clearer.setScratchReg(scratchReg);

  stackInfo = calculateStackInfo(func);
  frameSize = 0;

  StackSlot *incomingSlot = nullptr;
  StackSlot *outgoingSlot = nullptr;

  // Pick the largest outgoing frame.
  for (auto *slot : func.getStackSlots()) {
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

  for (auto *slot : func.getStackSlots()) {
    if (slot->getType() == StackSlot::IncomingArgFrame) {
      incomingSlot = slot;
      continue;
    }

    if (slot->getType() == StackSlot::Unused ||
        slot->getType() == StackSlot::OutgoingArgFrame)
      continue;

    slot->setOffset(frameSize);
    frameSize += slot->getSize();
  }

  frameSize =
      (frameSize + getFrameAlign() - 1) / getFrameAlign() * getFrameAlign();

  incomingSlot->setOffset(frameSize);

  LIRBuilder builder(*func.getParent());

  emitPrologue(builder, func);
  emitEpilogue(builder, func);

  for (auto *bb : func)
    for (auto *inst : *bb)
      for (int i = 0; i < inst->getNumOp(); i++)
        if (inst->getOp(i)->isStackSlot())
          resolveSlotRef(builder, LIRBB::Iterator(inst, bb), i);

  clearer.clear(func, vregNum);
}

void StackAllocator::emitPrologue(LIRBuilder &builder, LIRFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  auto bodyBegin = func.getEntry()->begin();
  builder.setInsertPoint(bodyBegin);
  loadRegPlusConstantToReg(builder, builder.phyReg(SP),
                           LIRConst::createInt(-frameSize, LIRValueType::i64),
                           builder.phyReg(SP), builder.phyReg(T0));

  for (StackSlot *slot : func.getStackSlots()) {
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
  // TODO: handle big frame larger than 2 ^ 12 bytes
  for (LIRBB *bb : stackInfo.exitBBs) {
    builder.setInsertPoint(bb, bb->getInsts().getLast());

    for (StackSlot *slot : func.getStackSlots()) {
      if (slot->getType() == StackSlot::CalleeSaved) {
        builder.loadValueFrom(slot->getReg(), slot, slot->getReg()->getType());
      }
    }

    loadRegPlusConstantToReg(builder, builder.phyReg(SP),
                             LIRConst::createInt(frameSize, LIRValueType::i64),
                             builder.phyReg(SP), builder.phyReg(T0));
  }
}
