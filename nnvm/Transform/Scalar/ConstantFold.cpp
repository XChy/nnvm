#include "ConstantFold.h"
#include "IR/Constant.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"

using namespace nnvm;

Value *ConstantFold::fold(Instruction *I) {

  if (I->isBinOp()) {
    Constant *lhs = dyn_cast<Constant>(I->getOperand(0));
    Constant *rhs = dyn_cast<Constant>(I->getOperand(1));
    if (!lhs || !rhs)
      return nullptr;

    switch (I->getOpcode()) {
    case InstID::Add:
    case InstID::Sub:
    case InstID::Mul:
    case InstID::UDiv:
    case InstID::SDiv:
    case InstID::URem:
    case InstID::SRem:
    case InstID::FAdd:
    case InstID::FSub:
    case InstID::FMul:
    case InstID::FDiv:
    case InstID::FRem:
    default:
      nnvm_unimpl();
    }
  }

  // TODO: Handle other operator on constant operands, such as "a[0]", where "a"
  // is a constant array.

  return nullptr;
}
