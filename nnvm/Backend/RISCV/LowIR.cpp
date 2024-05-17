#include "LowIR.h"
#include "Backend/RISCV/LowInstType.h"
#include <Backend/RISCV/CodegenInfo.h>
#include <Backend/RISCV/StackSlot.h>
#include <Utils/Debug.h>

using namespace nnvm::riscv;

void LowOperand::emit(std::ostream &out, EmitInfo &info) const {
  switch (type) {
  case VirtualRegister:
    out << "v" << regId;
    break;
  case GPRegister:
    out << getGPRNames()[regId];
    break;
  case FPRegister:
    out << "f" << regId;
    break;
  case Immediate:
    if (valueType == LowValueType::Float)
      out << fImmValue;
    else
      out << immValue;
    break;
  case BasicBlock:
    out << "bb" << info.indexOf(bb);
    break;
  case StackSlot:
    out << "stack" << stackSlotId;
    break;
  case Constant:
    out << "Unmaterialzed constant: " << (int64_t)immValue;
    break;
  case None:
    nnvm_unreachable("None ???");
    break;
  }
}

void LowInst::emit(std::ostream &out, EmitInfo &info) const {
  switch (type) {
  case SB:
  case SH:
  case SW:
  case SD:
  case LB:
  case LH:
  case LW:
  case LD:
  case JALR:
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
    out << "(";
    operand[1].emit(out, info);
    out << ")";
    return;
  }

  if (type > R_BEGIN && type < R_END) {
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
    return;
  }

  if (type > I_BEGIN && type < I_END) {
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    out << (int64_t)operand[2].immValue;
    return;
  }

  if (type > B_BEGIN && type < B_END) {
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
    return;
  }

  if (type > J_BEGIN && type < J_END) {
    out << getNameForInstType(type) << " ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    return;
  }

  out << "Unknown instruction type: " << type;
}

void LowBB::emit(std::ostream &out, EmitInfo &info, bool showLabel) const {
  out << info.labelOf(this) << ":\n";
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
  for (auto *BB : BBs)
    BB->emit(out, info, BB != BBs[0]);
}
