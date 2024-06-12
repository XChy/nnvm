/**
 * ConstantFold: a utility class for folding instructions with constant
 * operands, such as "1 + 2 -> 3". NOTE: This is not a pass, it could be shared
 * among other passes.
 */

#pragma once
#include "IR/Instruction.h"
#include "IR/Value.h"

namespace nnvm {
class ConstantFold {
public:
  /**
   * Fold the instructions with constant operands.
   * @param I the instruction to fold
   * @return the constant result if foldable, else nullptr.
   */
  Value *fold(Instruction *I);
};
} // namespace nnvm
