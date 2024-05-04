#include "Value.h"

using namespace nnvm;

void Value::addUse(Use *use) { userList.insertBack(use); }
