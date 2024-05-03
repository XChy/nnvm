#include "Function.h"

using namespace nnvm;

Function::~Function() {
  for (auto *BB : BBList)
    delete BB;
}
