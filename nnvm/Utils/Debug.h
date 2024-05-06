#include <iostream>

#ifdef COMPILER_DEBUG
#define debug(A)                                                               \
  { A; }
#else
#define debug(A) ;
#endif

#define nnvm_unreachable(Info)                                                 \
  {                                                                            \
    assert(0 && Info);                                                         \
    __builtin_unreachable();                                                   \
  }
