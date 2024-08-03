#include "GlobalHoist.h"
#include "ADT/GenericInt.h"
#include "IR/Constant.h"
#include "IR/IRBuilder.h"
#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Debug.h"
#include <cmath>

using namespace nnvm;

bool GlobalHoistPass::run(Function &F) {
  IRBuilder builder;

  for (auto *BB : F) {
    std::unordered_map<GlobalVariable *, std::vector<Use *>> usesOfGlobal;
    Instruction *afterPhi = nullptr;

    for (auto *I : *BB) {
      if (I->isa<PhiInst>())
        continue;

      if (!afterPhi)
        afterPhi = I;

      for (Use *U : I->getUseeList()) {
        if (auto *global = mayCast<GlobalVariable>(U->getUsee()))
          usesOfGlobal[global].push_back(U);
      }
    }

    builder.insertAt(BasicBlock::Iterator(afterPhi, BB));

    for (auto [global, uses] : usesOfGlobal) {
      Value *hoisted = builder.buildPin(global);
      for (Use *use : uses)
        use->set(hoisted);
    }
  }
  return true;
}
