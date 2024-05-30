#pragma once

#include "Backend/RISCV/LowIR/LIRValue.h"
#include <cstdint>

namespace nnvm::riscv {
class StackSlot : public LIRValue {
public:
  enum SlotType { Spilled, CallerSaved, CalleeSaved };
  StackSlot() : LIRValue(LIRValue::Stack) {}
  StackSlot(uint64_t size) : LIRValue(LIRValue::Stack), size(size) {}

  StackSlot(SlotType type, uint64_t size)
      : LIRValue(LIRValue::Stack), type(type), size(size) {}
  StackSlot(SlotType type, uint64_t size, Register *reg)
      : LIRValue(LIRValue::Stack), type(type), size(size), reg(reg) {}

  void setIndex(uint64_t index) { this->index = index; }
  uint64_t getIndex() const { return index; }

  void setSize(uint64_t size) { this->size = size; }
  uint64_t getSize() const { return size; }

  void setOffset(uint64_t offset) { this->offset = offset; }
  uint64_t getOffset() const { return offset; }

  void setReg(Register *regId) { this->reg = regId; }
  Register *getReg() const { return reg; }

  void setType(SlotType type) { this->type = type; }
  SlotType getType() const { return type; }

private:
  SlotType type;
  uint64_t index;
  uint64_t size;
  uint64_t offset;
  Register *reg; // Valid only for caller-saved and callee-saved registers.
};
} /* namespace nnvm::riscv */
