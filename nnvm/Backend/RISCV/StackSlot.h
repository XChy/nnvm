#pragma once

#include <cstdint>
namespace nnvm::riscv {
class StackSlot {
public:
  enum SlotType { Spilled, CallerSaved, CalleeSaved };
  StackSlot(uint64_t size) : size(size) {}

  uint64_t getSize() const { return size; }

private:
  uint64_t size;
};
} /* namespace nnvm::riscv */
