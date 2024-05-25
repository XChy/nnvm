#pragma once

#include <cstdint>
namespace nnvm::riscv {
class StackSlot {
public:
  enum SlotType { Spilled, CallerSaved, CalleeSaved };
  StackSlot(uint64_t size) : size(size) {}

  void setSize(uint64_t size) { this->size = size; }
  uint64_t getSize() const { return size; }

  void setOffset(uint64_t offset) { this->offset = offset; }
  uint64_t getOffset() const { return offset; }

private:
  uint64_t size;
  uint64_t offset;
};
} /* namespace nnvm::riscv */
