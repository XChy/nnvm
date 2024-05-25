#include "Value.h"

using namespace nnvm;

void Value::addUse(Use *use) { userList.insertBack(use); }

void Value::replaceSelf(Value *replacement) {
  auto it = userList.begin();
  while (it != userList.end()) {
    // Due to early change, we have to pre-save the next iterator.
    auto nextIt = it;
    nextIt++;
    Use *U = *it;
    U->set(replacement);
    it = nextIt;
  }
}
