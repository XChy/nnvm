#include "LowIR.h"
#include "Backend/RISCV/CodegenInfo.h"

using namespace nnvm::riscv;

void LowOperand::emit(std::ostream &out, EmitInfo &info) const {
  switch (type) {
  case VirtualRegister:
    out << "v" << registerIndex;
    break;
  case GPRegister:
    out << getGPRNames()[registerIndex];
    break;
  case FPRegister:
    out << "f" << registerIndex;
    break;
  case Immediate:
    out << immValue;
    break;
  case BasicBlock:
    out << "bb" << info.indexOfBB(bb);
    break;
  case StackObj:
    nnvm_unreachable("Stack should be materialized before emitting");
    break;
  case None:
    nnvm_unreachable("None ???");
    break;
  }
}

void LowInst::emit(std::ostream &out, EmitInfo &info) const {
  switch (type) {
  case MV:
    out << "mv ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    break;
  case SW:
    out << "sw ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << "(";
    operand[2].emit(out, info);
    out << ")";
    break;
  case LW:
    out << "lw ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << "(";
    operand[2].emit(out, info);
    out << ")";
    break;
  case ADD:
    out << "add ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    operand[2].emit(out, info);
    break;
  case ADDI:
    out << "addi ";
    operand[0].emit(out, info);
    out << ", ";
    operand[1].emit(out, info);
    out << ", ";
    out << (int64_t)operand[2].immValue;
    break;
  case RET:
    out << "ret";
    break;
  default:
    out << "not implemented:" << type;
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

void LowFunc::emit(std::ostream &out, EmitInfo &info) const {
  out << name << ":\n";
  for (auto *BB : BBs)
    BB->emit(out, info, BB != BBs[0]);
}
