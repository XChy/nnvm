#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"
#include "Utils/Cast.h"

namespace nnvm {

class Module;

class Constant : public Value {
public:
  Constant(Type *type) : Value(ValueID::Constant, type) {}
  virtual uint64_t hash() const;
  virtual bool eq(Constant *other) const;
  virtual Constant *clone() const;

private:
};

struct ConstantHasher {
  size_t operator()(Constant *c) const { return c->hash(); }
};
struct ConstantEqual {
  size_t operator()(Constant *a, Constant *b) const { return a->eq(b); }
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

private:
  float value;
};

class ConstantArray : public Constant {
public:
  static ConstantArray *create(Module &module);
};

} // namespace nnvm
