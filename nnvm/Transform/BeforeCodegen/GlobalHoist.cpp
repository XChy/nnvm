#include "GlobalHoist.h"
#include "ADT/GenericInt.h"
#include "IR/Constant.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <cmath>

using namespace nnvm;

bool GlobalHoist::run(Function &F) {
  for (auto *BB : F) {
  }
  return true;
}
