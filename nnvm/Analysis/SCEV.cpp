#include "SCEV.h"
#include "IR/Instruction.h"

using namespace nnvm;

ScevValue *ScevValue::single(Value *value) {
  ScevValue *ret = new ScevValue;
  ret->setSingleValue(value);
  ret->setType(Single);
  return ret;
}

ScevValue *ScevValue::recurrence(ScevValue *startValue, InstID operation,
                                 ScevValue *step) {
  ScevValue *ret = new ScevValue;
  ret->setStartValue(startValue);
  ret->setStep(step);
  ret->setOperation(operation);
  ret->setType(Recurrence);
  return ret;
}

Value *ScevValue::asSingle() const {
  if (!isSingle())
    return nullptr;
  return getSingleValue();
}

ConstantInt *ScevValue::asInt() const {
  auto *ret = asSingle();
  if (!ret)
    return nullptr;
  return mayCast<ConstantInt>(ret);
}

std::optional<uint64_t> ScevValue::iterations(ICmpInst::Predicate pred,
                                              ConstantInt *bound) {
  if (!isRec() || !startValue->isSingle() || !step->isSingle())
    return {};

  if (!startValue->getSingleValue()->isConstant() ||
      !step->getSingleValue()->isConstant())
    return {};

  if (operation == InstID::Add) {
    auto boundInt = bound->getSignedValue();
    auto startInt =
        cast<ConstantInt>(startValue->getSingleValue())->getSignedValue();
    auto stepInt = cast<ConstantInt>(step->getSingleValue())->getSignedValue();

    // TODO: overflow?
    if (pred == ICmpInst::SLT) {
      if (startInt >= boundInt)
        return 1;

      if (stepInt > 0) {
        return 1 + (boundInt - startInt + stepInt - 1) / stepInt;
      } else {
        return {};
      }
    }
  }
  return {};
}

ScevValue *SCEV::analyze(Value *value, Loop *loop) {

  if (value->isConstant() || value->isa<Argument>())
    return record(ScevValue::single(value));

  auto *I = mayCast<Instruction>(value);
  if (!I)
    return nullptr;

  // The value defined outsides loop would not evolute...
  if (!loop->contains(I->getBlock()))
    return record(ScevValue::single(I));

  auto *preheader = loop->getPreheader();
  auto *latch = loop->getSingleLatch();

  if (!preheader || !latch)
    return nullptr;

  if (PhiNode *phi = mayCast<PhiNode>(value)) {
    if (phi->getIncomingNum() != 2 || phi->getBlock() != loop->getHeader())
      return nullptr;

    Value *startValue = phi->getIncomingValueOf(preheader);
    Value *nextValue = phi->getIncomingValueOf(latch);

    ScevValue *start = analyze(startValue, loop);
    InstID operation;
    ScevValue *step;

    // Recognize addrec

    if (auto *add = mayCast<AddInst>(nextValue)) {
      if (add->getLHS() == phi && add->getRHS()->isConstant()) {
        operation = InstID::Add;
        step = analyze(add->getRHS(), loop);
      } else {
        return nullptr;
      }
    } else {
      return nullptr;
    }

    return record(ScevValue::recurrence(start, operation, step));
  }

  // Simplify (C1 rec (xxx)) + C2  to ((C1 + C2) rec (xxx))
  if (AddInst *add = mayCast<AddInst>(value)) {
    if (add->getLHS()->isa<PhiNode>() && add->getRHS()->isa<ConstantInt>()) {
      ScevValue *phiScev = analyze(add->getLHS(), loop);
      if (!phiScev || phiScev->isSingle())
        return nullptr;

      ConstantInt *rhs = cast<ConstantInt>(add->getRHS());
      if (ConstantInt *startInt = phiScev->getStartValue()->asInt()) {
        Constant *newStart = rhs->add(startInt);
        ScevValue *newStartScev = record(ScevValue::single(newStart));

        return record(ScevValue::recurrence(
            newStartScev, phiScev->getOperation(), phiScev->getStep()));
      }
    }
  }

  return nullptr;
}

ScevValue *SCEV::record(ScevValue *scevValue) {
  scevValues.push_back(scevValue);
  return scevValue;
}

SCEV::~SCEV() {
  for (auto *value : scevValues)
    delete value;
}
