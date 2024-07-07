#pragma once

#include "IR/Function.h"
#include "IR/Module.h"
#include <memory>
namespace nnvm {
void moveInstInBlock(BasicBlock *from, BasicBlock *to);
} /* namespace nnvm */
