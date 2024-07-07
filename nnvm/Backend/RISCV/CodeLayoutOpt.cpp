#include "CodeLayoutOpt.h"
#include "ADT/GenericInt.h"
#include "ADT/Ranges.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/LowInstType.h"
#include "Backend/RISCV/PhiResolution.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <utility>
using namespace nnvm;
using namespace nnvm::riscv;

void CodeLayoutOpt::layout(LIRFunc &func) {
  std::list<LIRBB *> result;
  std::unordered_set<LIRBB *> visited;

  std::stack<LIRBB *> worklist;
  worklist.push(func.getEntry());
}
