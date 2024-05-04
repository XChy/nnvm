#include "IRBuilder.h"
using namespace nnvm;

Value *IRBuilder::buildInst(InstType opcode,
                            const std::vector<Value *> &operands) {
  insertPoint++;
}
