#pragma once

namespace nnvm {

template <typename T> class ListIterator {
public:
  ListIterator(T *node) : node(node) {}

  ListIterator &operator++() {
    this->node = node->getNext();
    return *this;
  }

  bool operator==(ListIterator other) { return node == other.node; }
  bool operator!=(ListIterator other) { return node != other.node; }
  void insertBack(T *t) { node->insertBack(t); }
  void insertBefore(T *t) { node->insertBefore(t); }

  T *operator*() { return node; }

private:
  T *node;
};

template <typename T> class List {
public:
  List() : head(nullptr), tail(nullptr) {}

  ListIterator<T> begin() { return ListIterator<T>(head); }
  ListIterator<T> end() { return ListIterator<T>(nullptr); }

private:
  T *head;
  T *tail;
};
} // namespace nnvm
