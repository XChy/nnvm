#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"
namespace nnvm {

enum AAFlag { MayAlias, MustAlias, NotAlias };

class MemObj {
public:
  MemObj() {}
  explicit MemObj(Value *ptr) : pointer(ptr), offset(0), size(0) {}
  MemObj(Value *ptr, int64_t offset) : pointer(ptr), offset(offset), size(0) {}
  MemObj(Value *ptr, int64_t offset, GInt size)
      : pointer(ptr), offset(offset), size(size) {}

  void setPointer(Value *ptr) { pointer = ptr; }
  Value *getPointer() const { return pointer; }

  void setOffset(int64_t offset) { this->offset = offset; }
  int64_t getOffset() const { return offset; }

  void setSize(GInt size) { this->size = size; }
  GInt getSize() const { return size; }

  void normalize();

private:
  Value *pointer = nullptr;
  int64_t offset;
  GInt size;
};

Value *getRootObj(Value *pointer, uint depth = 0);

} /* namespace nnvm */
