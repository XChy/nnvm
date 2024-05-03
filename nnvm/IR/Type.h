#pragma once

namespace nnvm {
enum class TypeClass { Void, Integer, Float, Pointer, Array };

class Type {
public:
private:
  TypeClass typeClass;
};
} // namespace nnvm
