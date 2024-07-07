#include <cstddef>
#include <functional>

namespace nnvm {

inline size_t combineHash(size_t seed) { return seed; }

template <typename T, typename... Rest>
inline size_t combineHash(size_t seed, const T &v, Rest... rest) {
  std::hash<T> hasher;
  seed ^= hasher(v) + 0x9e3779b9 + (seed << 6) + (seed >> 2);
  return combineHash(seed, rest...);
}

}
