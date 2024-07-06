#include "LowIR.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowIR/Patterns.h"
#include "Backend/RISCV/LowInstType.h"
#include <Backend/RISCV/CodegenInfo.h>
#include <Backend/RISCV/StackSlot.h>
#include <Utils/Debug.h>

using namespace nnvm::riscv;

void LIRInst::emit(std::ostream &out, EmitInfo &info) {
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
  case FLW:
  case FSW:
  case FLD:
  case FSD:
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[2].emit(out, info);
    out << "(";
    operands[1].emit(out, info);
    out << ")";
    return;
  case CALL:
    // TODO: emit operands?
    out << getNameForInstType(type);
    out << " ";
    operands[0].emit(out, info);
    return;
  case LA:
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[1].emit(out, info);
    return;
  }

  if (type > R_BEGIN && type < R_END) {
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[1].emit(out, info);
    out << ", ";
    operands[2].emit(out, info);
    return;
  }

  if (type > I_BEGIN && type < I_END) {
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[1].emit(out, info);
    out << ", ";
    out << operands[2].getOperand()->as<LIRImm>()->getSignedValue();
    return;
  }

  if (type > B_BEGIN && type < B_END) {
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[1].emit(out, info);
    out << ", ";
    operands[2].emit(out, info);
    return;
  }

  if ((type > J_BEGIN && type < J_END) || (type > U_BEGIN && type < U_END)) {
    out << getNameForInstType(type) << " ";
    operands[0].emit(out, info);
    out << ", ";
    operands[1].emit(out, info);
    return;
  }

  if (type > F_BEGIN && type < F_END) {
    out << getNameForInstType(type) << " ";
    for (auto &op : operands) {
      if (&op != &operands[0])
        out << ", ";
      op.emit(out, info);
    }
    return;
  }

  out << "Unknown instruction type: " << type;
  for (auto &op : operands) {
    out << ", ";
    op.emit(out, info);
  }
}

void LIRBB::emit(std::ostream &out, EmitInfo &info, bool showLabel) {
  out << info.labelOf(this) << ":\n";
  for (const auto &I : insts) {
    out << "  ";
    I->emit(out, info);
    out << "\n";
  }
}

StackSlot *LIRFunc::allocStackSlot() {
  StackSlot *slot = new StackSlot();
  slot->setIndex(stackSlots.size());
  stackSlots.push_back(slot);
  return slot;
}

StackSlot *LIRFunc::allocStackSlot(uint64_t size) {
  StackSlot *slot = new StackSlot(size);
  slot->setIndex(stackSlots.size());
  stackSlots.push_back(slot);
  return slot;
}

StackSlot *LIRFunc::allocCalleeSavedSlot(Register *reg) {
  for (StackSlot *slot : stackSlots)
    if (slot->getType() == StackSlot::CalleeSaved && slot->getReg() == reg)
      return slot;

  StackSlot *slot = new StackSlot();
  slot->setReg(reg);
  slot->setType(StackSlot::CalleeSaved);
  slot->setSize(reg->bytes());
  slot->setIndex(stackSlots.size());
  stackSlots.push_back(slot);
  return slot;
}

void LIRFunc::emit(std::ostream &out, EmitInfo &info) {
  for (auto *BB : BBs)
    BB->emit(out, info, BB != *BBs.begin());
}

void LIRModule::emit(std::ostream &out) const {
  EmitInfo info(*this);
  for (auto &func : funcs)
    for (auto *bb : *func)
      info.allocBB(bb);

  for (auto *func : funcs)
    if (!func->isExternal)
      out << ".global " << func->name << "\n";

  // ".bss" section would be initialized with zeros.
  out << ".section .bss\n";
  for (auto *g : globals) {
    if (g->isAllZeros)
      g->emit(out, info);
    out << "\n";
  }

  out << ".section .data\n";
  for (auto *g : globals) {
    if (!g->isAllZeros)
      g->emit(out, info);
    out << "\n";
  }

  out << ".section .text\n";
  for (auto *func : funcs)
    func->emit(out, info);
}

uint LIRBB::getSuccNum() const {
  if (insts.empty())
    return 0;
  uint succNum = 0;
  auto it = --insts.end();
  while (isBranch((*it)->type) && !match(*it, pattern::pRet())) {
    succNum++;
    if (it == insts.begin())
      return succNum;
    it--;
  }
  return succNum;
}

LIRBB *LIRBB::getSucc(int index) {
  uint succNum = 0;
  auto it = --insts.end();
  while (succNum != index) {
    succNum++;
    it--;
  }
  return getBranchDest(*it);
}

void LIRBB::setSucc(int index, LIRBB *dest) {
  uint succNum = 0;
  auto it = --insts.end();
  while (succNum != index) {
    succNum++;
    it--;
  }
  setBranchDest(*it, dest);
}

uint LIRBB::getPredNum() const { return getUses().size(); }

LIRBB *LIRBB::getPred(int index) {
  auto it = getUses().begin();
  for (int i = 0; i < index; i++)
    it++;
  return (*it)->getInst()->getParent();
}

void LIRFunc::insert(LIRBB *bb) {
  BBs.insertBack(bb);
  bb->setParent(this);
}

LIRModule::LIRModule() {
  for (int id = 0; id < sizeof(phyRegisters) / sizeof(phyRegisters[0]); id++) {
    phyRegisters[id].setRegId(id);
    if (id > GPR_BEGIN && id < GPR_END)
      phyRegisters[id].setType(LIRValueType::i64);
    else if (id > FPR_BEGIN && id < FPR_END)
      phyRegisters[id].setType(LIRValueType::Double);
  }
}

void LIRModule::insert(LIRFunc *func) {
  assert(!func->getParent());
  funcs.push_back(func);
  func->setParent(this);
}

LIRModule::~LIRModule() {
  for (auto *f : funcs)
    delete f;

  for (auto *g : globals)
    delete g;

  for (auto *vr : virRegisters)
    delete vr;
}
