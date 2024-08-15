#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"
#include "Utils/Cast.h"
#include "Utils/Collection.h"
#include <string>
#include <vector>

namespace nnvm {

class Module;

class Constant : public Value {
public:
  Constant(Type *type) : Value(ValueID::Constant, type) {}
  virtual uint64_t hash() const = 0;
  virtual bool eq(const Constant *other) const = 0;
  virtual Constant *clone() const = 0;

  virtual ~Constant() {}

  void setModule(Module *m) { module = m; }
  Module *getModule() const { return module; }

private:
  Module *module;
};

struct ConstantEqual {
  bool operator()(Constant *a, Constant *b) { return a->eq(b); }
};

class ConstantInt : public Constant {
public:
  static ConstantInt *create(Module &module, Type *type, GInt value);

  // NOTE:  User should not use this constructor.
  ConstantInt(Type *type, GInt value);

  uint64_t hash() const { return value; }
  uint64_t getValue() const { return value; }
  int64_t getSignedValue() const { return value; }

  bool eq(const Constant *other) const {
    if (auto *otherInt = mayCast<ConstantInt>(other))
      return value == otherInt->value && getType() == other->getType();
    return false;
  }

  Constant *clone() const { return new ConstantInt(type, value); }
  std::string dump() {
    // Show in signed way.
    return std::to_string((int64_t)value);
  }

  std::string dumpAsOperand() { return type->dump() + " " + dump(); }

  // Arithmetic operations
  ConstantInt *add(ConstantInt *rhs) const;
  ConstantInt *sub(ConstantInt *rhs) const;
  ConstantInt *mul(ConstantInt *rhs) const;
  ConstantInt *sdiv(ConstantInt *rhs) const;
  ConstantInt *shl(ConstantInt *shlNum) const;

private:
  GInt value;
};

class ConstantFloat : public Constant {
public:
  static Constant *create(Module &module, float value);

  // NOTE:  User should not use this constructor.
  ConstantFloat(Type *ty, float value);

  virtual uint64_t hash() const { return value; }
  float getValue() const { return value; }
  bool eq(const Constant *other) const {
    if (auto *otherFloat = mayCast<ConstantFloat>(other))
      return value == otherFloat->value;
    return false;
  }

  Constant *clone() const { return new ConstantFloat(type, value); }
  std::string dump() {
    // TODO: Would it be imprecise if we emit it to llvm-ir?
    return std::to_string(value);
  }
  std::string dumpAsOperand() { return type->dump() + " " + dump(); }

private:
  float value;
};

class ConstantArray : public Constant {
public:
  static Constant *create(Module &module, Type *ty,
                          const std::vector<Constant *> &value);

  // NOTE:  User should not use this constructor.
  ConstantArray(Type *ty, const std::vector<Constant *> &value);

  virtual uint64_t hash() const {
    uint64_t ret = 0;
    for (auto *element : value)
      ret = ret * 133 + element->hash();
    return ret;
  }

  std::vector<Constant *> getValue() const { return value; }
  bool eq(const Constant *other) const {
    if (auto *otherFloat = mayCast<ConstantArray>(other))
      return value == otherFloat->value;
    return false;
  }

  Constant *clone() const { return new ConstantArray(type, value); }
  std::string dump() {
    std::string ret;
    ret += "[";

    std::vector<std::string> elements;
    for (auto *element : value)
      elements.push_back(element->dump());
    ret += join(elements.begin(), elements.end(), ", ");

    ret += "]";
    return ret;
  }

  std::string dumpAsOperand() { return type->dump() + " " + dump(); }

private:
  std::vector<Constant *> value;
};

class ConstantAllZeros : public Constant {
public:
  static Constant *create(Module &module, Type *type);

  // NOTE:  User should not use this constructor.
  ConstantAllZeros(Type *ty) : Constant(ty) {}

  virtual uint64_t hash() const { return 0; }
  bool eq(const Constant *other) const {
    if (auto *otherZeros = mayCast<ConstantAllZeros>(other))
      return getType() == other->getType();
    return false;
  }

  Constant *clone() const { return new ConstantAllZeros(type); }
  std::string dump() { return "zeros"; }
  std::string dumpAsOperand() { return type->dump() + " " + dump(); }
};

} // namespace nnvm
