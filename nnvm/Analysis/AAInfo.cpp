#include "AAInfo.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"

using namespace nnvm;

Value *nnvm::getRootObj(Value *pointer) {
  if (auto *ptradd = dyn_cast<PtrAddInst>(pointer))
    return getRootObj(ptradd->getLHS());
  return pointer;
}
