#include "GraphColoringRA.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/Info/Register.h"
#include "Backend/RISCV/LowIR.h"
#include "Backend/RISCV/LowIR/Builder.h"
#include "Backend/RISCV/LowIR/LIRValue.h"
#include "Backend/RISCV/StackSlot.h"
#include "Utils/Debug.h"
#include <Backend/RISCV/Analysis/LiveIntervalAnalysis.h>
#include <iterator>

using namespace nnvm::riscv;

static bool isSameClass(Register *a, Register *b) {
  return ((a->isFP() && b->isFP()) || (!a->isFP() && !b->isFP()));
}

void GraphColoringRA::allocate(LIRFunc &func) {}
