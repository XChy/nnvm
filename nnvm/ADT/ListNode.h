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
    newNext->prev = this;

    oldNext->prev = newNext;
  }

  void insertBefore(ListTrait<T> *newPrev) {
    ListTrait<T> *oldPrev = prev;

    this->prev = newPrev;

    newPrev->prev = oldPrev;
    newPrev->next = this;

    oldPrev->next = newPrev;
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
