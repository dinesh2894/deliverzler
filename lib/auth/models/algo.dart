import 'dart:collection';

import 'package:deliverzler/auth/models/stack.dart';

final people = ['Pablo', 'Manda', 'Megan'];

final scores = {'Eric': 9, 'Mark': 12, 'Wayne': 1};

final bag = {'Candy', 'Juice', 'Gummy'};

void main() {
/*  print(people);
  people.add('Edith');
  print(people);
  people.insert(1, 'Ray');
  print(people);

  // Map
  print(scores);
  final hashMap = HashMap.of(scores);
  print(hashMap);
  bag.add('Candy');
  print(bag);

  // Set
  final myList = [1, 2, 2, 3, 4];
  final mySet = <int>{};
  for (final item in myList) {
    if (mySet.contains(item)) {}
    mySet.add(item);
  }*/

  final stack = Stack<int>();
  stack.push(1);
  stack.push(2);
  stack.push(3);
  stack.push(4);
  print(stack);

  final element = stack.pop();
  print('Popped : $element');
}


