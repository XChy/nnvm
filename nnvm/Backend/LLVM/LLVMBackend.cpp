#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Collection.h"
#include "Utils/Debug.h"
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
    if (var->getInitVal())
      out << "@" << name << " = global " << var->getInitVal()->dumpAsOperand()
          << "\n";
    else
      out << "@" << name << " = global " << var->getInnerType()->dump() << "\n";
  }

  for (auto &[hash, constant] : ir.getConstantPool())
    valueToName[constant] = constant->dump();

  for (auto &[name, func] : ir.getFunctionMap()) {
    valueToName[func] = "@" + name;
    for (auto *arg : func->getArguments())
      valueToName[arg] = allocName("%tmp");
    for (auto *BB : *func) {
      valueToName[BB] = allocName("%tmp");
      for (auto *I : *BB)
        valueToName[I] = allocName("%tmp");
    }
  }

  // Transforming
  for (auto &[name, func] : ir.getFunctionMap()) {

    out << (func->isExternal() ? "declare " : "define ")
        << func->getReturnType()->dump() << " @" << name << "(";

    for (int i = 0; i < func->getArguments().size(); i++) {
      auto *arg = func->getArguments()[i];
      if (i != 0)
        out << ", ";
      out << arg->getType()->dump() << " " << valueToName[arg];
    }

    if (func->isExternal()) {
      out << ")\n";
      continue;
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
  if (I->getType() && !I->getType()->isVoid())
    out << valueToName[I] << " = ";

  if (auto SI = dyn_cast<StackInst>(I)) {
    out << "alloca i8, i32 " << SI->getAllocatedBytes() << ", align 4";
    return;
  }

  if (auto phi = dyn_cast<PhiInst>(I)) {
    out << "phi " << phi->getType()->dump();
    std::vector<std::string> incomingDumps;
    for (int i = 0; i < phi->getIncomingNum(); i++) {
      incomingDumps.push_back(" [ " + valueToName[phi->getIncomingValue(i)] +
                              ", " + valueToName[phi->getIncomingBB(i)] + " ]");
    }
    out << join(incomingDumps.begin(), incomingDumps.end(), ",");
    return;
  }

  if (auto LI = dyn_cast<LoadInst>(I)) {
    out << "load " << LI->getType()->dump() << ", "
        << LI->getOperand(0)->getType()->dump() << " "
        << valueToName[LI->getOperand(0)];
    return;
  }

  if (auto *ptrAdd = dyn_cast<PtrAddInst>(I)) {
    out << "getelementptr i8, ptr " << valueToName[ptrAdd->getOperand(0)]
        << ", " << ptrAdd->getOperand(1)->getType()->dump() << " "
        << valueToName[ptrAdd->getOperand(1)];
    return;
  }

  if (auto binOp = dyn_cast<BinOpInst>(I)) {
    out << binOp->getOpName() << " " << binOp->getOperand(0)->getType()->dump()
        << " " << valueToName[binOp->getLHS()] << ", "
        << valueToName[binOp->getRHS()];
    return;
  }

  if (auto callInst = dyn_cast<CallInst>(I)) {
    if (auto *F = dyn_cast<Function>(callInst->getCallee())) {
      std::vector<std::string> args(callInst->getArgNum());
      for (int i = 0; i < callInst->getArgNum(); i++)
        args[i] = callInst->getArg(i)->getType()->dump() + " " +
                  valueToName[callInst->getArg(i)];
      out << "call " << F->getReturnType()->dump() << " " << valueToName[F];
      out << "(";
      out << join(args.begin(), args.end(), ", ");
      out << ")";
      return;
    }
    nnvm_unimpl();
  }

  if (auto Br = dyn_cast<BranchInst>(I)) {
    out << "br"
        << " ";
    if (Br->isConditional()) {
      out << "i1"
          << " " << valueToName[Br->getOperand(0)] << ", "
          << "label"
          << " " << valueToName[Br->getSucc(0)] << ", "
          << "label"
          << " " << valueToName[Br->getSucc(1)];
    } else {
      out << "label"
          << " " << valueToName[Br->getSucc(0)];
    }
    return;
  }

  if (auto *CI = dyn_cast<ICmpInst>(I)) {
    out << "icmp"
        << " " << ICmpInst::getPredName(CI->getPredicate()) << " "
        << CI->getOperand(0)->getType()->dump() << " "
        << valueToName[CI->getOperand(0)] << ", "
        << valueToName[CI->getOperand(1)];

    return;
  }

  std::cerr << (uint)I->getOpcode() << "\n";
  nnvm_unreachable("Not implemented");
}
