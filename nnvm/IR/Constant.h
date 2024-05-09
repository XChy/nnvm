#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"
#include "Utils/Cast.h"
#include <string>

namespace nnvm {

class Module;

class Constant : public Value {
public:
  Constant(Type *type) : Value(ValueID::Constant, type) {}
  virtual uint64_t hash() const = 0;
  virtual bool eq(Constant *other) const = 0;
  virtual Constant *clone() const = 0;
  virtual ~Constant() {}

private:
};

class ConstantInt : public Constant {
public:
  static Constant *create(Module &module, Type *type, GInt value);

  // NOTE:  User should not use this constructor.
  ConstantInt(Type *type, GInt value);

  uint64_t hash() const { return value; }
  bool eq(Constant *other) const {
    if (auto *otherInt = dyn_cast<ConstantInt>(other))
      return value == otherInt->value;
    return false;
  }

  Constant *clone() const { return new ConstantInt(type, value); }
  std::string dump() {
    // Show in signed way.
    return std::to_string((int64_t)value);
  }
  std::string dumpAsOperand() { return type->dump() + " " + dump(); }

private:
  GInt value;
};

class ConstantFloat : public Constant {
public:
  static Constant *create(Module &module, float value);

  // NOTE:  User should not use this constructor.
  ConstantFloat(Type *ty, float value);

  virtual uint64_t hash() const { return value; }
  bool eq(Constant *other) const {
    if (auto *otherFloat = dyn_cast<ConstantFloat>(other))
      return value == otherFloat->value;
    return false;
  }

  Constant *clone() const { return new ConstantFloat(type, value); }
  std::string dump() { return std::to_string(value); }
  std::string dumpAsOperand() { return type->dump() + " " + dump(); }

private:
  float value;
};

class ConstantArray : public Constant {
public:
  static ConstantArray *create(Module &module);
};

} // namespace nnvm
