#pragma once

namespace nnvm {

template <typename T> class List;

template <typename T> class ListTrait {
  friend class List<T>;

public:
  T *getNext() const { return (T *)next; }
  T *getNext() { return (T *)next; }
  T *getPrev() const { return (T *)prev; }
  T *getPrev() { return (T *)prev; }

  void insertBack(ListTrait<T> *newNext) {
    ListTrait<T> *oldNext = next;
    next = newNext;
    newNext->next = oldNext;
  }

  void insertBefore(ListTrait<T> *newPrev) {
    ListTrait<T> *oldPrev = prev;
    prev = newPrev;
    newPrev->prev = oldPrev;
  }

  T *removeFromList() {
    prev->next = next;
    next->prev = prev;

    prev = nullptr;
    next = nullptr;
  }

private:
  ListTrait<T> *prev;
  ListTrait<T> *next;
};

} // namespace nnvm
