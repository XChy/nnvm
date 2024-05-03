#pragma once

namespace nnvm {

template <typename T> class ListTrait {
public:
  T *getNext() const { return next; }
  T *getNext() { return next; }
  T *getPrev() const { return prev; }
  T *getPrev() { return prev; }

  void insertBack(T *newNext) {
    T *oldNext = next;
    next = newNext;
    newNext->next = oldNext;
  }

  void insertBefore(T *newPrev) {
    T *oldPrev = prev;
    prev = newPrev;
    newPrev->prev = oldPrev;
  }

private:
  T *next;
  T *prev;
};

} // namespace nnvm
