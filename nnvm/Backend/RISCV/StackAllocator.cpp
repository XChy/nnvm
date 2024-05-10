#include "StackAllocator.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include "StackSlot.h"
using namespace nnvm::riscv;

void StackAllocator::allocate(LowFunc &func) {
  this->func = &func;
  frameSize = 0;
  for (auto &stackObj : func.stackSlots)
    frameSize += stackObj.getSize();
  frameSize =
      (frameSize + getFrameAlign() - 1) / getFrameAlign() * getFrameAlign();

  for (auto *bb : func.BBs) {
    for (auto it = bb->insts.begin(); it != bb->insts.end(); it++) {
      for (auto &operand : it->operand) {
        if (operand.isStackSlot()) {
          auto &slot = func.stackSlots[operand.stackSlotId];
          bb->insertBefore(it, LowInst{ADDI, {}});
        }
      }
    }
  }
}

void StackAllocator::emitPrologue(LowFunc &func) {
  // TODO: handle big frame larger than 2 ^ 12 bytes
  func.BBs[0]->insertBefore(func.BBs[0]->begin(),
                            LowInst{(LowInstType)InstID::Sub,
                                    {getDef(getSPReg(LowOperand::i64)),
                                     getUse(getSPReg(LowOperand::i64)),
                                     getUse(LowOperand::imm(frameSize))}});
}
void StackAllocator::emitEpilogue(LowFunc &func) {
  func.BBs[0]->insertBefore(func.BBs[0]->begin(),
                            // TODO: handle big frame larger than 2 ^ 12 bytes
                            LowInst{(LowInstType)InstID::Add,
                                    {getDef(getSPReg(LowOperand::i64)),
                                     getUse(getSPReg(LowOperand::i64)),
                                     getUse(LowOperand::imm(frameSize))}});
}
