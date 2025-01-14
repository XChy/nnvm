#pragma once

#include "Backend/RISCV/LowIR/LIRValue.h"
#include <algorithm>
#include <cstdint>

namespace nnvm::riscv {
class StackSlot : public LIRValue {

  // |===============================|
  // |                               |
  // |  incoming stack arguments     |
  // |                               |
  // |===============================|
  // |                               |
  // |  callee-allocated save area   |
  // |  for argument that are        |
  // |  split between register and   |
  // |  the stack                    |
  // |                               |
  // |===============================|
  // |                               |
  // |  callee-allocated save area   |
  // |  for register varargs         |
  // |                               |
  // |===============================|
  // |                               |
  // |  GPR save area                |
  // |                               |
  // |===============================|
  // |                               |
  // |  FPR save area                |
  // |                               |
  // |===============================|
  // |                               |
  // |  local variables              |
  // |                               |
  // |===============================|
  // |                               |
  // |  dynamic allocation           |
  // |                               |
  // |===============================|
  // |                               |
  // |  outgoing stack arguments     |
  // |                               |
  // |===============================| <-- callee sp

public:
  enum SlotType {
    Unused,
    Spilled,
    CallerSaved,
    CalleeSaved,
    IncomingArgFrame,
    OutgoingArgFrame
  };

  static inline uint64_t getMaxMemAlign() { return 8; }
  StackSlot() : LIRValue(LIRValue::Stack) {
    LIRValue::setType(LIRValueType::i64);
    setType(Spilled);
    setAlign(getMaxMemAlign());
  }
  StackSlot(uint64_t size) : LIRValue(LIRValue::Stack), size(size) {
    LIRValue::setType(LIRValueType::i64);
    setType(Spilled);
    setAlign(std::min(getMaxMemAlign(), size));
  }

  StackSlot(SlotType type, uint64_t size)
      : LIRValue(LIRValue::Stack), type(type), size(size) {
    setAlign(std::min(getMaxMemAlign(), size));
  }
  StackSlot(SlotType type, uint64_t size, Register *reg)
      : LIRValue(LIRValue::Stack), type(type), size(size), reg(reg) {
    setAlign(std::min(getMaxMemAlign(), size));
  }

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

  void setAlign(uint64_t align) { this->align = align; }
  uint64_t getAlign() const { return align; }

private:
  SlotType type;

  // For printing.
  uint64_t index;

  // The size of the frame.
  uint64_t size;

  // The real offset from sp. Refer to the slot by (sp + offset).
  uint64_t offset;

  //  Only valid for caller-saved and callee-saved registers.
  Register *reg;

  uint64_t align;
};
} /* namespace nnvm::riscv */
