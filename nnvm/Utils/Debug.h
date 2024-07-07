#pragma once
#include <cassert>
#include <cxxabi.h>
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

// Learn from https://stackoverflow.com/questions/691719/how-to-display-a-stack-trace-when-an-exception-is-thrown
static inline void dumpBackTrace(FILE *out = stderr,
                                 unsigned int max_frames = 63) {
  void *addrlist[max_frames + 1];

  int addrlen = backtrace(addrlist, sizeof(addrlist) / sizeof(void *));

  if (addrlen == 0) 
    return;

  char **symbollist = backtrace_symbols(addrlist, addrlen);

  size_t funcnamesize = 256;
  char *funcname = (char *)malloc(funcnamesize);

  for (int i = 1; i < addrlen; i++) {
    char *begin_name = 0, *begin_offset = 0, *end_offset = 0;

    for (char *p = symbollist[i]; *p; ++p) {
      if (*p == '(')
        begin_name = p;
      else if (*p == '+')
        begin_offset = p;
      else if (*p == ')' && begin_offset) {
        end_offset = p;
        break;
      }
    }

    if (begin_name && begin_offset && end_offset && begin_name < begin_offset) {
      *begin_name++ = '\0';
      *begin_offset++ = '\0';
      *end_offset = '\0';

      int status;
      char *ret =
          abi::__cxa_demangle(begin_name, funcname, &funcnamesize, &status);
      if (status == 0) {
        funcname = ret;
        fprintf(out, "  %s : %s+%s\n", symbollist[i], funcname, begin_offset);
      } else {
        fprintf(out, "  %s : %s()+%s\n", symbollist[i], begin_name,
                begin_offset);
      }
    } else {
      fprintf(out, "  %s\n", symbollist[i]);
    }
  }

  free(funcname);
  free(symbollist);
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
