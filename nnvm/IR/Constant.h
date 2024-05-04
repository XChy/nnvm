#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"

namespace nnvm {

class Module;

class Constant : public Value {
public:
  Constant() : Value(ValueID::Constant) {}

private:
};

class ConstantInt : public Constant {
public:
  static ConstantInt *create(Module *module, Type *type, GInt value);
};
class ConstantFloat : public Constant {

public:
  static ConstantFloat *create(Module *module, float value);
};
class ConstantArray : public Constant {

public:
  static ConstantArray *create(Module *module);
};

} // namespace nnvm
