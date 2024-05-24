#pragma once

#include <string>
namespace nnvm {

template <typename Iter>
std::string join(Iter begin, Iter end, const std::string &middle) {
  std::string ret;
  Iter it = begin;
  while (it != end) {
    if (it != begin) {
      ret += middle;
    }
    ret += *it;
    it++;
  }
  return ret;
}
} /* namespace nnvm */
