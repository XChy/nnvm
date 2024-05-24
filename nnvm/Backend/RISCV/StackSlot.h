#pragma once

#include <cstdint>

namespace nnvm::riscv {
class StackSlot {
public:
  enum SlotType { Spilled, CallerSaved, CalleeSaved };
  StackSlot() {}
  StackSlot(uint64_t size) : size(size) {}
  StackSlot(SlotType type, uint64_t size) : type(type), size(size) {}

  void setSize(uint64_t size) { this->size = size; }
  uint64_t getSize() const { return size; }

  void setOffset(uint64_t offset) { this->offset = offset; }
  uint64_t getOffset() const { return offset; }

  void setRegId(uint64_t regId) { this->regId = regId; }
  uint64_t getRegId() const { return regId; }

  void setType(SlotType type) { this->type = type; }
  uint64_t getType() const { return type; }

private:
  SlotType type;
  uint64_t size;
  uint64_t offset;
  uint64_t regId; // Valid only for caller-saved and callee-saved registers.
};
} /* namespace nnvm::riscv */
