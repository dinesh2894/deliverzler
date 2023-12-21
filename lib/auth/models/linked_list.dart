class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> extends Iterable<E> {
  // first node of the Linked List
  Node<E>? head;

  // last node of the Linked List
  Node<E>? tail;

  @override
  bool get isEmpty => head == null;

  /// [push] adds a value at he front of the list
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  // Appending to the End of a List
  // add a value at the end of the list,
  // and it's known as tail-end insertion
  void append(E value) {
    // STEP 1:
    if (isEmpty) {
      push(value);
      return;
    }

    // STEP 2:
    tail!.next = Node(value: value);

    // STEP 3:
    tail = tail!.next;
  }

  // Inserting in Middle of the list
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  Node<E> insertAfter(Node<E> node, E value) {
    // STEP  1:
    if (tail == node) {
      append(value);
      return tail!;
    }

    // STEP 2:
    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

// Removing Values from a list
  E? pop() {
    final value = head?.value;

    head = head?.next;

    if (isEmpty) {
      tail = null;
    }
    return value;
  }

  // Removing From the End of a List
  E? removeLast() {
    // STEP 1:
    if (head?.next == null) {
      print("List is Empty");
      return pop();
    }
    // STEP 2:
    var current = head;
    while (current!.next != tail) {
      current = current.next;
    }

    // STEP 3:
    final value = tail?.value;
    tail = current;
    tail?.next = null;
    return value;
  }

  // Removing a value From the middle of a List
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;

    if (node.next == tail) {
      tail = node;
    }
    node.next = node.next?.next;
    return value;
  }

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  @override
  Iterator<E> get iterator => throw UnimplementedError();
}

