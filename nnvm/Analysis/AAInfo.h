#pragma once

#include "ADT/GenericInt.h"
#include "IR/Value.h"
namespace nnvm {

enum AAFlag { MayAlias, MustAlias, NotAlias };

class MemObj {
public:
  MemObj() {}
  MemObj(Value *ptr) : pointer(ptr), offset(0), size(0) {}
  MemObj(Value *ptr, GInt offset) : pointer(ptr), offset(offset), size(0) {}
  MemObj(Value *ptr, GInt offset, GInt size)
      : pointer(ptr), offset(offset), size(size) {}

  void setPointer(Value *ptr) { pointer = ptr; }
  Value *getPointer() const { return pointer; }

  void setOffset(GInt offset) { this->offset = offset; }
  GInt getOffset() const { return offset; }

  void setSize(GInt size) { this->size = size; }
  GInt getSize() const { return size; }

private:
  Value *pointer = nullptr;
  GInt offset;
  GInt size;
};

Value *getRootObj(Value *pointer);

} /* namespace nnvm */
