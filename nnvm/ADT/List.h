#pragma once

#include "ADT/ListNode.h"
#include <iterator>
namespace nnvm {

template <typename T> class List {
public:
  List() {
    dummyBegin.next = &dummyEnd;
    dummyBegin.prev = nullptr;

    dummyEnd.prev = &dummyBegin;
    dummyEnd.next = nullptr;
  }
  List(const List &) = delete;
  List(List &&) = delete;

  class Iterator {
  public:
    using iterator_category = std::input_iterator_tag;
    using difference_type = uint64_t;
    using value_type = T *;
    using pointer = T **;
    using reference = T *&;

    Iterator(ListTrait<T> *node) : curNode(node) {}
    Iterator() : Iterator(nullptr) {}

    Iterator &operator++() {
      curNode = curNode->next;
      return *this;
    }

    Iterator operator++(int) {
      Iterator ret = curNode;
      curNode = curNode->next;
      return ret;
    }

    Iterator &operator--() {
      curNode = curNode->prev;
      return *this;
    }

    Iterator operator--(int) {
      Iterator ret = curNode;
      curNode = curNode->prev;
      return ret;
    }

    void insertBefore(T *a) { curNode->insertBefore(a); }
    void insertBack(T *a) { curNode->insertBack(a); }

    bool operator==(Iterator other) { return curNode == other.curNode; }
    bool operator!=(Iterator other) { return curNode != other.curNode; }

    T *operator*() { return (T *)curNode; }

  private:
    ListTrait<T> *curNode;
  };

  void insertBack(ListTrait<T> *inserted) {
    ListTrait<T> *prev = dummyEnd.prev;
    prev->insertBack(inserted);
  }

  T *getLast() {
    if (empty())
      return nullptr;
    return dummyEnd.getPrev();
  }

  Iterator begin() { return Iterator(dummyBegin.next); }
  Iterator end() { return Iterator(&dummyEnd); }

  Iterator erase(Iterator it) {
    Iterator next = it;
    next++;
    (*it)->removeFromList();
    return next;
  }

  bool empty() { return dummyEnd.prev == &dummyBegin; }

  void freeAll() {
    ListTrait<T> *cur = dummyEnd.getPrev();
    while (cur != &dummyBegin) {
      ListTrait<T> *prev = cur->getPrev();
      delete (T *)cur;
      cur = prev;
    }
  }

private:
  ListTrait<T> dummyBegin;
  ListTrait<T> dummyEnd;
};
} // namespace nnvm
