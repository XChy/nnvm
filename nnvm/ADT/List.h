#pragma once

#include "ADT/ListNode.h"
namespace nnvm {

template <typename T> class List {
public:
  List() {
    dummyBegin.next = &dummyEnd;
    dummyBegin.prev = nullptr;

    dummyEnd.prev = &dummyBegin;
    dummyEnd.next = nullptr;
  }

  class Iterator {
  public:
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

    bool operator==(Iterator other) { return curNode == other.curNode; }
    bool operator!=(Iterator other) { return curNode != other.curNode; }

    T *operator*() { return (T *)curNode; }

  private:
    ListTrait<T> *curNode;
  };

  class ConstIterator {
  public:
    ConstIterator(const ListTrait<T> *node) : curNode(node) {}
    ConstIterator() : Iterator(nullptr) {}

    ConstIterator &operator++() {
      curNode = curNode->next;
      return *this;
    }

    ConstIterator operator++(int) {
      ConstIterator ret = curNode;
      curNode = curNode->next;
      return ret;
    }

    ConstIterator &operator--() {
      curNode = curNode->prev;
      return *this;
    }

    ConstIterator operator--(int) {
      ConstIterator ret = curNode;
      curNode = curNode->prev;
      return ret;
    }

    bool operator==(ConstIterator other) { return curNode == other.curNode; }
    bool operator!=(ConstIterator other) { return curNode != other.curNode; }

    const T *operator*() { return (const T *)curNode; }

  private:
    const ListTrait<T> *curNode;
  };

  void insertBack(ListTrait<T> *inserted) {
    ListTrait<T> *prev = dummyEnd.prev;
    prev->insertBack(inserted);
  }

  T *getLast() {
    if (dummyEnd.prev == &dummyBegin)
      return nullptr;
    return dummyEnd.getPrev();
  }

  Iterator begin() { return Iterator(dummyBegin.next); }
  Iterator end() { return Iterator(&dummyEnd); }

  ConstIterator cbegin() const { return ConstIterator(dummyBegin.next); }
  ConstIterator cend() const { return ConstIterator(&dummyEnd); }

private:
  ListTrait<T> dummyBegin;
  ListTrait<T> dummyEnd;
};
} // namespace nnvm
