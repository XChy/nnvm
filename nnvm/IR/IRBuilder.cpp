#include "IRBuilder.h"
#include "IR/Instruction.h"
using namespace nnvm;

Value *IRBuilder::buildInst(InstType opcode,
                            const std::vector<Value *> &operands) {
  Instruction *I = new Instruction;
  insertPoint.insertBefore(I);
  insertPoint++;
  return I;
}
