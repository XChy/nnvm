#include "AAInfo.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"

using namespace nnvm;

void MemObj::normalize() {
  if (auto *ptradd = mayCast<PtrAddInst>(pointer)) {
    ConstantInt *rhs = mayCast<ConstantInt>(ptradd->getRHS());
    if (!rhs)
      return;
    pointer = ptradd->getLHS();
    offset = rhs->getSignedValue();
  }
}

Value *nnvm::getRootObj(Value *pointer, uint depth) {
  if (depth > 5)
    return pointer;

  if (auto *ptradd = mayCast<PtrAddInst>(pointer))
    return getRootObj(ptradd->getLHS(), depth + 1);

  return pointer;
}
