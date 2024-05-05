#include "IR/Type.h"
#include "IR/Value.h"
namespace nnvm {
class Argument : public Value {
public:
  Argument(Type *ty);
  Argument(Type *ty, const std::string &name) {
    type = ty;
    setName(name);
  }

  std::string dump() { return type->dump() + " " + name; }

private:
};
} /* namespace nnvm */
