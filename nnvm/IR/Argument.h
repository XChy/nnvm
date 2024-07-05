#include "IR/Type.h"
#include "IR/Value.h"
namespace nnvm {
class Argument : public Value {
public:
  Argument(Type *ty) : Value(ValueID::Argument, ty) {}
  Argument(Type *ty, const std::string &name) : Value(ValueID::Argument, ty) {
    setName(name);
  }

  std::string dump() { return type->dump() + " " + name; }

private:
};
} /* namespace nnvm */
