#include "LowIR.h"

using namespace nnvm::riscv;

static std::vector<const char *> registerList = {
    "zero", "ra", "sp", "gp", "tp",  "t0",  "t1", "t2", "s0", "s1", "a0",
    "a1",   "a2", "a3", "a4", "a5",  "a6",  "a7", "s2", "s3", "s4", "s5",
    "s6",   "s7", "s8", "s9", "s10", "s11", "t3", "t4", "t5", "t6",
};

const std::vector<const char *> &getRegisterList() { return registerList; }

void LowFunc::emit(std::ostream &out) { out << name << ":\n"; }
