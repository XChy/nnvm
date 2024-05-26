#include "StackAllocator.h"
#include "ADT/GenericInt.h"
#include "ADT/PatternMatch.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include "StackSlot.h"
#include <unordered_set>
using namespace nnvm::riscv;

void RegClearer::clear(LowFunc &func,
                       std::unordered_map<uint64_t, uint64_t> &vregNum) {

  std::unordered_set<uint64_t> assignedReg;

  for (auto *bb : func.BBs) {
    for (auto it = bb->insts.begin(); it != bb->insts.end(); it++) {
      for (LowOperand &op : it->operand) {

        // Create emergency stack slot.
        if (op.isVR()) {
          if (!assignedReg.count(op.regId)) {
            bb->insertBefore(it, {SD,
                                  {
                                      getRAReg(LowOperand::i64).use(),
                                      getSPReg(LowOperand::i64).use(),
                                      LowOperand::imm(0),
                                  }});
            assignedReg.insert(op.regId);
          }

          if (op.lastUsed) {
            bb->insertAfter(it, {LD,
                                 {
                                     getRAReg(LowOperand::i64).use(),
                                     getSPReg(LowOperand::i64).use(),
                                     LowOperand::imm(0),
                                 }});

            assignedReg.erase(op.regId);
          }
          op = getRAReg(LowOperand::i64).use();
        }
      }
    }
  }
}

StackAllocator::FunctionStackInfo
StackAllocator::calculateStackInfo(LowFunc &func) {
  FunctionStackInfo ret;
  std::set<uint64_t> usedRegs;

  for (LowBB *bb : func.BBs) {
    for (LowInst &inst : *bb) {

      ret.isCaller |= inst.type == CALL;

      if (match(&inst, pattern::pRet()))
        ret.exitBBs.push_back(bb);
    }
  }

  if (ret.isCaller)
    func.allocStack(StackSlot(StackSlot::CalleeSaved, 8, RA));

  return ret;
}

bool StackAllocator::resolveSlotRef(LowBB *bb, LowBB::Iterator it,
                                    uint64_t slotOperandIndex) {
  LowOperand &operand = it->operand[slotOperandIndex];
  if (operand.isStackSlot()) {

    auto &slot = func->stackSlots[operand.stackSlotId];
    uint64_t offset = slot.getOffset();
    if (canExpressInBits<11>(offset)) {
      it->operand[slotOperandIndex] = getSPReg(LowOperand::i64).use();
      it->operand[slotOperandIndex + 1] = LowOperand::imm(offset);
      return true;
    }

    auto addressRegister = func->allocVReg(LowOperand::i64);

    bb->insertBefore(it, LowInst::create(ADDI, addressRegister,
                                         getSPReg(LowOperand::i64),
                                         LowOperand::imm(offset)));
    operand = addressRegister.lastUse();
  }
  return true;
}

static inline bool needEmergencySlot(LowFunc &func) {
  uint64_t currentFrameSize = 0;
  for (auto &slot : func.stackSlots) {
    currentFrameSize += slot.getSize();
  }
  currentFrameSize = (currentFrameSize + getFrameAlign() - 1) /
                     getFrameAlign() * getFrameAlign();
  return !canExpressInBits<11>(currentFrameSize);
}

void StackAllocator::allocate(LowFunc &func) {
  this->func = &func;
  stackInfo = calculateStackInfo(func);

  frameSize = 0;
  // TODO: Increase number of emergency slots if necessary?
  uint64_t numEmergencySlots = needEmergencySlot(func) ? 1 : 0;
  frameSize += numEmergencySlots * 8;

  for (auto &slot : func.stackSlots) {
    slot.setOffset(frameSize);
    frameSize += slot.getSize();
  }

  frameSize =
      (frameSize + getFrameAlign() - 1) / getFrameAlign() * getFrameAlign();

  emitPrologue(func);
  emitEpilogue(func);

  for (auto *bb : func.BBs)
    for (auto it = bb->insts.begin(); it != bb->insts.end(); it++)
      for (int i = 0; i < it->operand.size(); i++)
        if (it->operand[i].isStackSlot())
          resolveSlotRef(bb, it, i);

  clearer.clear(func, vregNum);
}

void StackAllocator::emitPrologue(LowFunc &func) {

  for (int slotId = 0; slotId < func.stackSlots.size(); slotId++) {
    StackSlot slot = func.stackSlots[slotId];
    if (slot.getType() == StackSlot::CalleeSaved)
      func.getEntry()->insertBefore(
          func.getEntry()->begin(),
          LowInst{SD,
                  {LowOperand::gpr(slot.getRegId(), LowOperand::i64),
                   LowOperand::stackSlot(slotId), LowOperand::imm(0)}});
  }

  // TODO: handle big frame larger than 2 ^ 12 bytes
  func.getEntry()->insertBefore(func.getEntry()->begin(),
                                LowInst::create(ADDI, getSPReg(LowOperand::i64),
                                                getSPReg(LowOperand::i64),
                                                LowOperand::imm(-frameSize)));
}

void StackAllocator::emitEpilogue(LowFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  for (LowBB *bb : stackInfo.exitBBs) {
    for (int slotId = 0; slotId < func.stackSlots.size(); slotId++) {
      StackSlot slot = func.stackSlots[slotId];
      if (slot.getType() == StackSlot::CalleeSaved)
        bb->insertBefore(
            --bb->end(),
            LowInst{LD,
                    {LowOperand::gpr(slot.getRegId(), LowOperand::i64).def(),
                     LowOperand::stackSlot(slotId), LowOperand::imm(0)}});
    }

    bb->insertBefore(--bb->end(),
                     LowInst::create(ADDI, getSPReg(LowOperand::i64),
                                     getSPReg(LowOperand::i64),
                                     LowOperand::imm(frameSize)));
  }
}
