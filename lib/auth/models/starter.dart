import 'package:deliverzler/auth/models/linked_list.dart';

void main() {
/*  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped : $element');

  const list = ['S','M','O','K','E'];
  final smokeStack = Stack.of(list);
  print(smokeStack);
  smokeStack.pop();
  print(smokeStack);*/

  /*final node1 = Node(value: 1);
  final node2 = Node(value: 2);
  final node3 = Node(value: 3);
  final node4 = Node(value: 4);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;
  print(node1);*/

  final list = LinkedList<int>();

  // push operation
  /*list.push(3);
  list.push(2);
  list.push(1);
  print(list);*/

  // append operation
  /* list.append(1);
  list.append(2);
  list.append(3);
  print(list);*/

  // insert

  list
    ..push(3)
    ..push(2)
    ..push(1);
  print("Before: $list");

  var middleNode = list.nodeAt(1)!;
  list.insertAfter(middleNode, 42);
  print('After: $list');

  var newinsertNode = list.nodeAt(1)!;
  list.insertAfter(newinsertNode, 43);
  print('Again After: $list');

  // removing

  print('Before : $list');
  final poppedValue = list.pop();
  print('After : $list');
  print('Popped value: $poppedValue');

  /* list
    ..pop()
    ..pop();
  print('$list');
  list.removeLast();
  print('Removed value : $list');*/
  print('Before : $list');
  final firstNode = list.nodeAt(1);
  final removedValue = list.removeAfter(firstNode!);
  print('Removed value: $removedValue');
  print('After: $list');

  // Making a List Iterable
 /* final numbers = [1,2,3];
  for(final number in numbers){
    print(number);
  }*/

  for(final element in list){
    print(element);
  }
}
