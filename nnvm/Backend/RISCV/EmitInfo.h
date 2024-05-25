#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>

namespace nnvm::riscv {

class LowBB;
class LowFunc;
class LowModule;

class EmitInfo {
public:
  EmitInfo(const LowModule &module);

  void markBBAsEntry(LowBB *bb, LowFunc *func) { entries[bb] = func; }

  uint64_t allocBB(LowBB *bb) {
    bbToIndex[bb] = blockCount;
    blockCount++;
    return bbToIndex[bb];
  }

  uint64_t indexOf(const LowBB *bb) { return bbToIndex[bb]; }
  std::string labelOf(const LowBB *bb);

  void setEmitImplicit(bool emitImplicit) { this->emitImplicit = emitImplicit; }
  bool isEmitImplicit() const { return emitImplicit; }

private:
  uint64_t blockCount;
  bool emitImplicit = true;
  std::unordered_map<const LowBB *, uint64_t> bbToIndex;
  std::unordered_map<const LowBB *, const LowFunc *> entries;
};
} /* namespace nnvm::riscv */
