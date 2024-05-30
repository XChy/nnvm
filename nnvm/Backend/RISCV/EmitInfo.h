#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>

namespace nnvm::riscv {

class LIRBB;
class LIRFunc;
class LIRModule;

class EmitInfo {
public:
  EmitInfo() {}
  EmitInfo(const LIRModule &module);

  void markBBAsEntry(LIRBB *bb, LIRFunc *func) { entries[bb] = func; }

  uint64_t allocBB(LIRBB *bb) {
    bbToIndex[bb] = blockCount;
    blockCount++;
    return bbToIndex[bb];
  }

  uint64_t indexOf(const LIRBB *bb) { return bbToIndex[bb]; }
  std::string labelOf(const LIRBB *bb);

  void setEmitImplicit(bool emitImplicit) { this->emitImplicit = emitImplicit; }
  bool isEmitImplicit() const { return emitImplicit; }

  void setShowLine(bool showLine) { this->showLine = showLine; }
  bool isShowLine() { return showLine; }

private:
  uint64_t blockCount = 0;
  bool emitImplicit = true;
  bool showLine = false;
  std::unordered_map<const LIRBB *, uint64_t> bbToIndex;
  std::unordered_map<const LIRBB *, const LIRFunc *> entries;
};
} /* namespace nnvm::riscv */
