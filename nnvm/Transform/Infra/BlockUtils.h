#pragma once

#include "IR/Function.h"
#include "IR/Module.h"

namespace nnvm {

class SingleMapper {
public:
  SingleMapper(Value *from, Value *to) : from(from), to(to) {}

  Value *operator()(Value *a) { return a == from ? to : nullptr; }

private:
  Value *from;
  Value *to;
};

void moveInstBefore(Instruction *from, BasicBlock::Iterator to);

void moveInstInBlock(BasicBlock *from, BasicBlock *to);

// Before:
// | tosplit:     |
// |     phi      |
// | instruction1 |
// | instruction2 |
// |     pos      |
// | instruction3 |
// | instruction4 |
//
// After:
// | tosplit:        |
// |     phi         |
// | instruction1    |
// | instruction2    |
// |                 |
// | newSplitted:    |
// |     pos         |
// | instruction3    |
// | instruction4    |
//
void splitBlockAt(BasicBlock *tosplit, Instruction *pos,
                  BasicBlock *&newSplitted);

} /* namespace nnvm */
