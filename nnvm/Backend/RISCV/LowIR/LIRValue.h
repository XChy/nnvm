#pragma once

#include "ADT/List.h"
#include "ADT/ListNode.h"
#include "Backend/RISCV/EmitInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include <memory>
#include <ostream>
#include <unordered_map>
namespace nnvm::riscv {

class LIRInst;
class LIRValue;

enum class LIRValueType { i64, i32, i16, i8, i1, Float, Imm };
// Every inst manages the memory of operand handles;
class LowOperand : public ListTrait<LowOperand> {
public:
  LowOperand() : inst(nullptr), operand(nullptr) {}
  LowOperand(LIRInst *inst) : inst(inst), operand(nullptr) {}

  enum OperandFlag : int {
    None = 0,
    Use = 1,
    Def = 2,
  };

  LowOperand *use(LIRValue *newOperand);
  LowOperand *def(LIRValue *newOperand);
  LowOperand *set(LIRValue *newOperand);

  // static LowOperand *newUse(LowInst *inst, LIRValue *newOperand);
  // static LowOperand *newDef(LowInst *inst, LIRValue *newOperand);

  LIRInst *getInst() const { return inst; }
  LIRValue *getOperand() const { return operand; }

  bool isUse() const { return flag == Use; }
  bool isDef() const { return flag == Def; }

  LIRValue *removeRefOfValue();

  void emit(std::ostream &out, EmitInfo &info) const;

private:
  LIRInst *inst;
  LIRValue *operand;
  OperandFlag flag;
};

class LIRValue {
public:
  enum ValueID {
    None,
    Const, // Need to be materialized finally.
    Reg,
    Imm, // Different from Constant, this is valid for machine
         // instruction.
    Func,
    Stack,
    Block,
    GlobalVar,
  };

  LIRValue(ValueID valueID) : valueID(valueID) {}
  LIRValue(ValueID valueID, LIRValueType type) : valueID(valueID), type(type) {}

  void addUse(LowOperand *op) { uses.insertBack(op); }
  void addDef(LowOperand *op) { defs.insertBack(op); }

  void setValueID(ValueID id) { valueID = id; }
  ValueID getValueID() const { return valueID; }

  void setType(LIRValueType type) { this->type = type; }
  LIRValueType getType() const { return type; }

  bool isReg() const { return valueID == Reg; }
  bool isPReg() const;
  bool isVReg() const;
  bool isImm() const { return valueID == Imm; }
  bool isBlock() const { return valueID == Block; }
  bool isStackSlot() const { return valueID == Stack; }
  bool isConstant() const { return valueID == Const; }
  bool isGlobalVar() const { return valueID == GlobalVar; }

  void replaceWith(LIRValue *newValue);
  void emit(std::ostream &out, EmitInfo &info) const;

  template <typename T> T *as() { return (T *)this; }
  template <typename T> const T *as() const { return (const T *)this; }

private:
  List<LowOperand> defs;
  List<LowOperand> uses;

  ValueID valueID;
  LIRValueType type;
};

class Register : public LIRValue {
public:
  Register() : LIRValue(LIRValue::Reg) {}
  Register(uint32_t regId) : LIRValue(LIRValue::Reg), regId(regId) {}

  bool isVirtual() const { return regId >= VR_BEGIN; }
  bool isPhy() const { return regId < PR_END; }
  bool isGP() const { return regId > GPR_BEGIN && regId < GPR_END; }
  bool isFP() const { return regId > FPR_BEGIN && regId < FPR_END; }
  bool isCalleeSaved();

  void setRegId(uint32_t id) { this->regId = id; }
  uint32_t getRegId() const { return regId; }

private:
  uint32_t regId;
};

class LIRImm : public LIRValue {
public:
  LIRImm(uint64_t value) : LIRValue(LIRValue::Imm), value(value) {}
  static LIRImm *create(uint64_t value);

  void setValue(uint64_t value) { this->value = value; }
  uint64_t getValue() const { return value; }

  int64_t getSignedValue() const { return value; }

private:
  uint64_t value;
};

class LIRConst : public LIRValue {
public:
  LIRConst(uint64_t value, LIRValueType type)
      : LIRValue(LIRValue::Const, type), ivalue(value) {}
  LIRConst(float value) : LIRValue(LIRValue::Imm), fvalue(value) {}

  static LIRConst *createInt(uint64_t value, LIRValueType type);
  static LIRConst *createFloat(float value);

  void setIValue(uint64_t value) { this->ivalue = value; }
  uint64_t getIValue() const { return ivalue; }

  void setFValue(float value) { this->fvalue = value; }
  float getFValue() const { return fvalue; }

  int64_t getSignedValue() const { return ivalue; }

private:
  union {
    uint64_t ivalue;
    float fvalue;
  };
};

} /* namespace nnvm::riscv */
