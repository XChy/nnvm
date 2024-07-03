#pragma once
#include <cassert>
#include <execinfo.h>
#include <iostream>

#ifdef COMPILER_DEBUG
#define debug(A)                                                               \
  do {                                                                         \
    A;                                                                         \
  } while (0);
#else
#define debug(A)
#endif

static inline void dumpBackTrace() {
  const int size = 200;
  void *buffer[size];
  char **strings;
  int nptrs = backtrace(buffer, size);
  printf("backtrace() returned %d address\n", nptrs);
  strings = backtrace_symbols(buffer, nptrs);
  if (strings) {
    for (int i = 0; i < nptrs; ++i) {
      printf("%s\n", strings[i]);
    }
    free(strings);
  }
}

#define nnvm_assert(cond)                                                      \
  {                                                                            \
    if (!(cond)) {                                                             \
      dumpBackTrace();                                                         \
      assert(cond);                                                            \
    }                                                                          \
  }

#define nnvm_unreachable(Info)                                                 \
  {                                                                            \
    dumpBackTrace();                                                           \
    assert(0 && Info);                                                         \
    __builtin_unreachable();                                                   \
  }

#define nnvm_unimpl() nnvm_unreachable("Not implemented")
