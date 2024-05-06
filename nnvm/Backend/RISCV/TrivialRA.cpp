
#include "Backend/RISCV/TrivialRA.h"
#include "Backend/RISCV/CodegenInfo.h"
#include "Backend/RISCV/LowIR.h"
#include <unordered_map>
#include <unordered_set>
using namespace nnvm::riscv;

void TrivialRA::allocate(LowFunc &func) {
  auto freeRegs = unpreservedRegs();
  std::unordered_set<uint64_t> available(freeRegs.begin(), freeRegs.end());
  std::unordered_map<uint64_t, uint64_t> v2p;

  for (LowOperand operand : func.args)
    if (operand.isGPR())
      available.erase(operand.registerIndex);

  for (auto *BB : func.BBs) {
    for (LowInst &I : BB->insts) {
      for (LowOperand &op : I.operand) {
        if (op.isVR()) {
          if (available.empty()) {
            // TODO: spill
          } else {
            if (op.flag == LowOperand::Def) {
              uint64_t freeOne = *available.begin();
              v2p[op.registerIndex] = freeOne;
              op.type = LowOperand::GPRegister;
              op.registerIndex = freeOne;
              available.erase(available.begin());
            } else {
              op.type = LowOperand::GPRegister;
              op.registerIndex = v2p[op.registerIndex];
            }
          }
        }
      }
    }
  }
}
