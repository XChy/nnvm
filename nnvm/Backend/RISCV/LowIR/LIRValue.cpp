#include "LIRValue.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/LowIR.h"
#include <iterator>
#include <memory>
#include <unordered_map>
using namespace nnvm::riscv;

LowOperand *LowOperand::use(LIRValue *newOperand) {
  if (operand)
    removeFromList();

  flag = Use;
  if (newOperand)
    newOperand->addUse(this);
  operand = newOperand;
  return this;
}

LowOperand *LowOperand::def(LIRValue *newOperand) {
  if (operand)
    removeFromList();

  flag = Def;
  if (newOperand)
    newOperand->addDef(this);
  operand = newOperand;
  return this;
}

LowOperand *LowOperand::set(LIRValue *newOperand) {
  if (isUse())
    use(newOperand);
  else if (isDef())
    def(newOperand);
  return this;
}

LIRValue *LowOperand::removeRefOfValue() {
  LIRValue *ret = operand;
  if (operand)
    removeFromList();
  operand = nullptr;
  return ret;
}

void LowOperand::emit(std::ostream &out, EmitInfo &info) const {
  operand->emit(out, info);
}

void LIRValue::replaceUseWith(LIRValue *newValue) {
  for (LowOperand *operand : incChange(uses))
    operand->use(newValue);
}

void LIRValue::replaceWith(LIRValue *newValue) {
  for (LowOperand *operand : incChange(uses))
    operand->use(newValue);
  for (LowOperand *operand : incChange(defs))
    operand->def(newValue);
}

void LIRValue::emit(std::ostream &out, EmitInfo &info) const {
  switch (valueID) {
  case Reg:
    if (isVReg() && isFP())
      out << "f";
    out << getNameForRegister(as<Register>()->getRegId());
    break;
  case Imm:
    out << as<LIRImm>()->getSignedValue();
    break;
  case Block:
    out << "bb" << info.indexOf(as<LIRBB>());
    break;
  case Stack:
    out << "stack" << as<StackSlot>()->getIndex();
    break;
  case Const:
    out << "Unmaterialized constant: " << as<LIRConst>()->getIValue();
    break;
  case Func:
    out << as<LIRFunc>()->name;
    break;
  case UBValue:
    out << "ubvalue";
    break;
  case GlobalVar:
  case GlobalName:
    out << as<LIRGlobal>()->name;
    break;
  default:
    nnvm_unimpl();
  }
}

bool LIRValue::isPReg() const { return isReg() && as<Register>()->isPhy(); }
bool LIRValue::isVReg() const {
  return isReg() && as<Register>()->isVirtual();
};

bool Register::needToPreserve() const { return regId != SP && regId != ZERO; }

bool Register::isCalleeSaved() const {
  switch (regId) {
  case SP:
  case S0:
  case S1:
  case S2:
  case S3:
  case S4:
  case S5:
  case S6:
  case S7:
  case S8:
  case S9:
  case S10:
  case S11:
  case FS0:
  case FS1:
  case FS2:
  case FS3:
  case FS4:
  case FS5:
  case FS6:
  case FS7:
  case FS8:
  case FS9:
  case FS10:
  case FS11:
    return true;
  default:
    return false;
  }
}

static std::unordered_map<uint64_t, std::unique_ptr<LIRImm>> immediates;
LIRImm *LIRImm::create(uint64_t value) {
  if (!immediates.count(value))
    immediates[value] = std::make_unique<LIRImm>(value);
  return immediates[value].get();
}

static std::unordered_map<float, std::unique_ptr<LIRConst>> floatConstant;
static std::unordered_map<
    uint64_t, std::unordered_map<LIRValueType, std::unique_ptr<LIRConst>>>
    intConstant;

LIRConst *LIRConst::createInt(uint64_t value, LIRValueType type) {
  if (!intConstant.count(value) || !intConstant[value].count(type))
    intConstant[value][type] = std::make_unique<LIRConst>(value, type);
  return intConstant[value][type].get();
}

LIRConst *LIRConst::createFloat(float value) {
  if (!floatConstant.count(value))
    floatConstant[value] = std::make_unique<LIRConst>(value);
  return floatConstant[value].get();
}

std::vector<std::byte> LIRConst::interpretAsBytes() {
  std::vector<std::byte> ret(bytes());
  GInt value;

  if (getType() == LIRValueType::Float) {
    value = getIValue();
  } else if (getType() >= LIRValueType::i1 && getType() <= LIRValueType::i64) {
    float floatVal = getFValue();
    value = reinterpret_cast<const GInt &>(floatVal);
  } else {
    nnvm_unimpl();
  }

  for (int i = 0; i < bytes(); i++) {
    ret[i] = (std::byte)(value & 0xFF);
    value >>= 8;
  }

  return ret;
}

static std::unordered_map<LIRValueType, std::unique_ptr<LIRUBValue>> ubvalues;

LIRUBValue *LIRUBValue::get(LIRValueType type) {
  if (!ubvalues.count(type))
    ubvalues[type] = std::make_unique<LIRUBValue>(type);
  return ubvalues[type].get();
}
