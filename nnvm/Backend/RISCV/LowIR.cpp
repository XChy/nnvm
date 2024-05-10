#include "LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <Backend/RISCV/CodegenInfo.h>
#include <Backend/RISCV/StackSlot.h>
#include <Utils/Debug.h>

using namespace nnvm::riscv;

void LowOperand::emit(std::ostream &out, EmitInfo &info) const {
  switch (type) {
  case VirtualRegister:
    out << "v" << registerId;
    break;
  case GPRegister:
    out << getGPRNames()[registerId];
    break;
  case FPRegister:
    out << "f" << registerId;
    break;
  case Immediate:
    out << immValue;
    break;
  case BasicBlock:
    out << "bb" << info.indexOfBB(bb);
    break;
  case StackSlot:
    nnvm_unreachable("Stack should be materialized before emitting");
    break;
  case None:
    nnvm_unreachable("None ???");
    break;
  }
}

void LowInst::emit(std::ostream &out, EmitInfo &info) const {
  if (type > R_BEGIN && type < R_END) {
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
  }
  switch (type) {
  case SB:
  case SH:
  case SW:
  case SD:
  case LB:
  case LH:
  case LW:
  case LD:
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
    out << "(";
    operand[1].emit(out, info);
    out << ")";
    break;
  }
}

void LowBB::emit(std::ostream &out, EmitInfo &info, bool showLabel) const {
  if (showLabel)
    out << "bb" << info.indexOfBB(this) << ":\n";
  for (const auto &I : insts) {
    out << "  ";
    I.emit(out, info);
    out << "\n";
  }
}

uint64_t LowFunc::allocStackSlot(uint64_t size) {
  stackSlots.push_back(StackSlot(size));
  return stackSlots.size() - 1;
}
uint64_t LowFunc::allocStack(const StackSlot &obj) {
  stackSlots.push_back(obj);
  return stackSlots.size() - 1;
}

void LowFunc::emit(std::ostream &out, EmitInfo &info) const {
  out << name << ":\n";
  for (auto *BB : BBs)
    BB->emit(out, info, BB != BBs[0]);
}