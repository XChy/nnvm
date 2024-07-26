#include "IR/Instruction.h"
#include "Utils/Cast.h"
#include "Utils/Collection.h"
#include "Utils/Debug.h"
#include <Backend/LLVM/LLVMBackend.h>
#include <string>
#include <unordered_map>

using namespace nnvm::llvm;

namespace nnvm {
static void emitConstant(nnvm::Constant *CV, std::ostream &out) {
  if (auto *zeros = mayCast<ConstantAllZeros>(CV)) {
    out << "zeroinitializer";
  } else if (auto *C = mayCast<ConstantInt>(CV)) {
    out << (int64_t)C->getValue();
  } else if (auto *C = mayCast<ConstantFloat>(CV)) {
    out << C->getValue();
  } else if (auto *CA = mayCast<ConstantArray>(CV)) {
    out << "<";
    int i = 0;
    for (Constant *element : CA->getValue()) {
      if (i)
        out << ", ";
      out << element->getType()->dump() << " ";
      emitConstant(element, out);
      i++;
    }
    out << ">";
  }
}
} // namespace nnvm

void LLVMBackend::emit(Module &ir, std::ostream &out) {
  uint64_t localValueIndex = 0;
  auto allocName = [&localValueIndex](const std::string &prefix) {
    return prefix + std::to_string(localValueIndex++);
  };

  // Mapping
  for (auto &[name, var] : ir.getGlobalVarMap()) {
    valueToName[var] = "@" + name;
    // TODO: initializer?

    if (var->getInnerType()->isArray())
      out << "@" << name << " = global <" << var->getInnerType()->dump()
          << "> ";
    else
      out << "@" << name << " = global " << var->getInnerType()->dump() << " ";

    if (var->getInitVal()) {
      emitConstant(var->getInitVal(), out);
    }
    out << "\n";
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

  if (auto SI = mayCast<StoreInst>(I)) {
    out << "store " << SI->getStoredValue()->getType()->dump() << " "
        << valueToName[SI->getStoredValue()] << ", "
        << SI->getDest()->getType()->dump() << " "
        << valueToName[SI->getDest()];
    return;
  }

  if (auto RI = mayCast<RetInst>(I)) {
    out << "ret";
    if (RI->getOperandNum() != 0)
      out << " " << RI->getOperand(0)->getType()->dump() << " "
          << valueToName[RI->getOperand(0)];
    else
      out << " void";
    return;
  }

  // Instructions with defs
  if (I->getType() && !I->getType()->isVoid())
    out << valueToName[I] << " = ";

  if (auto SI = mayCast<StackInst>(I)) {
    out << "alloca i8, i32 " << SI->getAllocatedBytes() << ", align 4";
    return;
  }

  if (auto phi = mayCast<PhiInst>(I)) {
    out << "phi " << phi->getType()->dump();
    std::vector<std::string> incomingDumps;
    for (int i = 0; i < phi->getIncomingNum(); i++) {
      incomingDumps.push_back(" [ " + valueToName[phi->getIncomingValue(i)] +
                              ", " + valueToName[phi->getIncomingBB(i)] + " ]");
    }
    out << join(incomingDumps.begin(), incomingDumps.end(), ",");
    return;
  }

  if (auto LI = mayCast<LoadInst>(I)) {
    out << "load " << LI->getType()->dump() << ", "
        << LI->getOperand(0)->getType()->dump() << " "
        << valueToName[LI->getOperand(0)];
    return;
  }

  if (auto FN = mayCast<FNegInst>(I)) {
    out << "fneg " << FN->getOperand(0)->getType()->dump() << " "
        << valueToName[FN->getOperand(0)];
    return;
  }

  if (auto *ptrAdd = mayCast<PtrAddInst>(I)) {
    out << "getelementptr i8, ptr " << valueToName[ptrAdd->getOperand(0)]
        << ", " << ptrAdd->getOperand(1)->getType()->dump() << " "
        << valueToName[ptrAdd->getOperand(1)];
    return;
  }

  if (auto binOp = mayCast<BinOpInst>(I)) {
    out << binOp->getOpName() << " " << binOp->getOperand(0)->getType()->dump()
        << " " << valueToName[binOp->getLHS()] << ", "
        << valueToName[binOp->getRHS()];
    return;
  }

  if (auto callInst = mayCast<CallInst>(I)) {
    if (auto *F = mayCast<Function>(callInst->getCallee())) {
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

  if (auto Br = mayCast<BranchInst>(I)) {
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

  if (auto *CI = mayCast<ICmpInst>(I)) {
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
