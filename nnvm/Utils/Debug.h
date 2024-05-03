#include <iostream>

#ifdef COMPILER_DEBUG
#define debug(A)                                                               \
  { A; }
#else
#define debug(A) ;
#endif
