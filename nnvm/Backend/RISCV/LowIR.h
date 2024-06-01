#pragma once

#include "ADT/ListNode.h"
#include "Backend/RISCV/EmitInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "IR/Instruction.h"
#include "StackSlot.h"
#include "Utils/Collection.h"
#include "Utils/Debug.h"
#include <ADT/GenericInt.h>
#include <Backend/RISCV/LowIR/LIRValue.h>
#include <array>
#include <cstddef>
#include <iostream>
#include <list>
#include <string>
#include <vector>

namespace nnvm::riscv {

class LIRBB;

class LIRGlobal : public LIRValue {
public:
  // LIRGlobal is just a pointer, whose bitwidth should be 64.
  LIRGlobal(LIRValue::ValueID id) : LIRValue(id, LIRValueType::i64) {}
  std::string name;
  bool isExternal = false;
};

class LIRGlobalVar : public LIRGlobal {
public:
  LIRGlobalVar() : LIRGlobal(LIRValue::GlobalVar) {}
  bool isAllZeros = false;
  uint64_t size = 0;
  std::vector<std::byte> data;

  void emit(std::ostream &out, EmitInfo &info) const {
    out << name << ":\n";
    if (isAllZeros) {
      out << ".space " << size;
    } else {
      out << ".byte ";
      std::vector<std::string> dataDump(data.size());
      for (int i = 0; i < data.size(); i++)
        dataDump[i] = std::to_string((unsigned char)data[i]);
      out << join(dataDump.begin(), dataDump.end(), ", ");
    }
  }
};

class LIRInst : public ListTrait<LIRInst> {
public:
  LIRInst(const LIRInst &inst) = delete;
  LIRInst(uint64_t type, uint32_t numOps) : type(type), numOps(numOps) {
    operands.resize(numOps, LowOperand(this));
  }

  void emit(std::ostream &out, EmitInfo &info);

  LIRInst *setUse(uint index, LIRValue *usee) {
    operands[index].use(usee);
    return this;
  }

  LIRInst *setDef(uint index, LIRValue *def) {
    operands[index].def(def);
    return this;
  }

  LIRInst *setOpcode(uint64_t type) {
    this->type = type;
    return this;
  }

  uint64_t getOpcode() { return type; }

  LIRValue *getOp(uint index) { return operands[index].getOperand(); }
  LowOperand *getOpHandle(uint index) { return &operands[index]; }
  size_t getNumOp() { return operands.size(); }

  void eraseFromList() {
    for (auto &op : operands)
      op.removeFromList();
    ListTrait<LIRInst>::eraseFromList();
  }

  // Assume these operands are used, instead of being defined
  LIRInst *swap(uint index1, uint index2) {
    LIRValue *temp = operands[index1].removeRefOfValue();
    operands[index1].set(operands[index2].getOperand());
    operands[index2].set(temp);
    return this;
  }

  static LIRInst *create(uint64_t type, uint32_t numOps) {
    LIRInst *inst = new LIRInst(type, numOps);
    return inst;
  }

  // op def, use1, use2
  static LIRInst *create(uint64_t type, LIRValue *def, LIRValue *use1,
                         LIRValue *use2) {
    LIRInst *inst = new LIRInst(type, 3);
    inst->setDef(0, def);
    inst->setUse(1, use1);
    inst->setUse(2, use2);
    return inst;
  }

  // op use1, use2, use3
  static LIRInst *createAllUse(uint64_t type, LIRValue *use1, LIRValue *use2,
                               LIRValue *use3) {
    LIRInst *inst = new LIRInst(type, 3);
    inst->setUse(0, use1);
    inst->setUse(1, use2);
    inst->setUse(2, use3);
    return inst;
  }

  // op def, use1
  static LIRInst *create(uint64_t type, LIRValue *def, LIRValue *use1) {
    LIRInst *inst = new LIRInst(type, 2);
    inst->setDef(0, def);
    inst->setUse(1, use1);
    return inst;
  }

  uint64_t type;
  std::vector<LowOperand> operands;
  uint32_t numOps;
};

class LIRFunc;

class LIRBB : public LIRValue, public ListTrait<LIRBB> {
public:
  LIRBB() : LIRValue(LIRValue::Block) {}
  void emit(std::ostream &out, EmitInfo &info, bool showLabel);

  typedef List<LIRInst>::Iterator Iterator;

  Iterator begin() { return insts.begin(); }
  Iterator end() { return insts.end(); }
  void insertBefore(Iterator it, LIRInst *I) { it.insertBefore(I); }
  void insertAfter(Iterator it, LIRInst *I) { it.insertBack(I); }

  uint getSuccNum();
  LIRBB *getSucc(int index);

  void setParent(LIRFunc *func) { parent = func; }
  LIRFunc *getParent() const { return parent; }
  List<LIRInst> &getInsts() { return insts; }
  ~LIRBB() { insts.freeAll(); }

private:
  LIRFunc *parent;
  List<LIRInst> insts;
};

class LIRFunc : public LIRGlobal {
public:
  LIRFunc() : LIRGlobal(LIRValue::Func) {}
  void emit(std::ostream &out, EmitInfo &info);

  void insert(LIRBB *bb);
  LIRBB *getEntry() { return *BBs.begin(); }

  StackSlot *allocCalleeSavedSlot(Register *reg);
  StackSlot *allocStackSlot(uint64_t size);
  StackSlot *allocStackSlot();

  List<LIRBB>::Iterator begin() { return BBs.begin(); }
  List<LIRBB>::Iterator end() { return BBs.end(); }

  void setParent(LIRModule *module) { parent = module; }
  LIRModule *getParent() const { return parent; }

  std::vector<StackSlot *> getStackSlots() const { return stackSlots; }

  ~LIRFunc() {
    for (auto *slot : stackSlots)
      delete slot;
    BBs.freeAll();
  }

private:
  List<LIRBB> BBs;
  LIRModule *parent = nullptr;
  std::vector<LIRValue *> args;
  std::vector<StackSlot *> stackSlots;
};

class LIRModule {
public:
  LIRModule();
  LIRModule(const LIRModule &other) = delete;

  void insert(LIRFunc *func);

  std::vector<LIRFunc *> funcs;
  std::vector<LIRGlobalVar *> globals;

  std::vector<Register *> virRegisters;

  const std::array<Register, PR_END> &getAllPhyRegs() const {
    return phyRegisters;
  }
  std::array<Register, PR_END> &getAllPhyRegs() { return phyRegisters; }

  Register *allocVReg(LIRValueType type) {
    auto *ret = new Register(virRegisters.size() + VR_BEGIN);
    ret->setType(type);
    virRegisters.push_back(ret);
    return ret;
  }

  Register *getPhyReg(uint64_t id) { return &phyRegisters[id]; }

  void emit(std::ostream &out) const;

  ~LIRModule();

private:
  std::array<Register, PR_END> phyRegisters;
};
} // namespace nnvm::riscv
