#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include <Backend/LLVM/LLVMBackend.h>
#include <string>
#include <unordered_map>

using namespace nnvm::llvm;

void LLVMBackend::emit(Module &ir, std::ostream &out) {
  uint64_t localValueIndex = 0;
  auto allocName = [&localValueIndex](const std::string &prefix) {
    return prefix + std::to_string(localValueIndex++);
  };

  // Mapping
  for (auto &[name, var] : ir.getGlobalVarMap()) {
    valueToName[var] = "@" + name;
    // TODO: initializer?
    out << "@" << name << " = global " << var->getType()->dump() << "\n";
  }

  for (auto &[hash, constant] : ir.getConstantPool())
    valueToName[constant] = constant->dump();

  for (auto &[name, func] : ir.getFunctionMap()) {
    valueToName[func] = name;
    for (auto *arg : func->getArguments())
      valueToName[arg] = allocName("%");
    for (auto *BB : *func) {
      valueToName[BB] = allocName("%");
      for (auto *I : *BB)
        valueToName[I] = allocName("%");
    }
  }

  // Transforming
  for (auto &[name, func] : ir.getFunctionMap()) {

    out << "define " << func->getReturnType()->dump() << " @" << name << "(";

    for (int i = 0; i < func->getArguments().size(); i++) {
      auto *arg = func->getArguments()[i];
      if (i != 0)
        out << ", ";
      out << arg->getType()->dump() << " " << valueToName[arg];
    }

    out << ") {\n";

    for (auto *BB : *func) {
      out << valueToName[BB].substr(1) << ":\n";
      for (auto *I : *BB) {
        out << "  ";
        emit(I, out);
        out << "\n";
      }
    }

    out << "}\n";
  }
}

void LLVMBackend::emit(Instruction *I, std::ostream &out) {
  // Instructions without defs

  if (auto SI = dyn_cast<StoreInst>(I)) {
    out << "store " << SI->getStoredValue()->getType()->dump() << " "
        << valueToName[SI->getStoredValue()] << ", "
        << SI->getDest()->getType()->dump() << " "
        << valueToName[SI->getDest()];
    return;
  }

  if (auto RI = dyn_cast<RetInst>(I)) {
    out << "ret";
    if (RI->getOperandNum() != 0)
      out << " " << RI->getOperand(0)->getType()->dump() << " "
          << valueToName[RI->getOperand(0)];
    return;
  }

  // Instructions with defs
  out << valueToName[I] << " = ";

  if (auto SI = dyn_cast<StackInst>(I)) {
    out << "alloca i8, i32 " << SI->getAllocatedBytes() << ", align 4";
    return;
  }

  if (auto LI = dyn_cast<LoadInst>(I)) {
    out << "load " << LI->getType()->dump() << ", "
        << LI->getOperand(0)->getType()->dump() << " "
        << valueToName[LI->getOperand(0)];
    return;
  }

  if (auto binOp = dyn_cast<BinOpInst>(I)) {
    out << binOp->getOpName() << " " << binOp->getOperand(0)->getType()->dump()
        << " " << valueToName[binOp->getLHS()] << ", "
        << valueToName[binOp->getRHS()];
    return;
  }

  std::cerr << (uint)I->getOpcode() << "\n";
  nnvm_unreachable("Not implemented");
}
