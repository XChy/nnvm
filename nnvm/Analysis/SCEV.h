// =======================================================================
// SCEV: Scalar Evolution, used to analyze the inductive relation in loops based
// on Bachmann, Wang, and Zima’s “Chains of Recurrences” (“chrecs”)
// =======================================================================

#pragma once

#include "Analysis/LoopAnalysis.h"
#include "IR/Instruction.h"
#include "IR/Value.h"
#include <optional>

namespace nnvm {

class ScevValue {
public:
  enum ScevType { Single, Recurrence };

  ScevValue *getStartValue() const { return startValue; }
  void setStartValue(ScevValue *value) { startValue = value; }

  InstID getOperation() const { return operation; }
  void setOperation(InstID op) { operation = op; }

  ScevValue *getStep() const { return step; }
  void setStep(ScevValue *value) { step = value; }

  Value *getSingleValue() const { return singleValue; }
  void setSingleValue(Value *value) { singleValue = value; }
  Value *asSingle() const;
  ConstantInt *asInt() const;

  ScevType getType() const { return type; }
  void setType(ScevType ty) { type = ty; }

  bool isSingle() const { return type == Single; }
  bool isRec() const { return type == Recurrence; }

  static ScevValue *single(Value *value);
  static ScevValue *recurrence(ScevValue *startValue, InstID operation,
                               ScevValue *step);

  std::optional<uint64_t> iterations(ICmpInst::Predicate pred,
                                     ConstantInt *bound);

private:
  union {
    struct {
      ScevValue *startValue;
      InstID operation;
      ScevValue *step;
    };
    Value *singleValue;
  };

  ScevType type;
};

class SCEV : public FunctionPass {
public:
  bool run(Function &F) { return true; }

  ScevValue *analyze(Value *value, Loop *loop);
  ~SCEV();

private:
  ScevValue *record(ScevValue *scevValue);
  std::vector<ScevValue *> scevValues;
};

} /* namespace nnvm */
