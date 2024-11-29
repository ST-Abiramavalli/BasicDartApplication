import 'dart:collection';

void main() {

  //************** List associated methods ********************************

  List<String> list = ['a','b','c','d'];
  print("list:$list");

  list.addAll(['e','f']);
  print('list addAll:$list');

  list.removeAt(4);
  print('list removeAt:$list');

  list.insertAll(4, ['e']);
  print('list insertAll:$list');

  list.remove('f');
  print('list remove:$list');

  Iterable<String> l2 = list.reversed;
  print('list reversed:${l2.toList()}');

  print('is list empty:${l2.isEmpty}');

  print('first element in the list:${list.first}');

  print('last element in the list:${list.last}');

  //************** Set associated methods ********************************

  Set s1 = new  Set();
  s1.addAll([9,1,2,3,4,5,6,1,1,9]);
  print('set addAll:$s1');

  s1.remove(9);
  print('remove 9 from set:$s1');

  //************** Map associated methods ********************************

  var m1 = {1:"Apple",2:"Mango",3:"Banana"};
  print('Map:$m1');

  m1.addAll({4:'Pineapple',7:'Grapes'});
  m1[5]="Kiwi";
  print('Map addAll $m1');

  print('Map Keys: ${m1.keys} \nValues: ${m1.values}');

  m1.remove(2);
  print('Map remove: $m1');

  print('Map length is ${m1.length}');

  //************** Queue associated methods ********************************

  var q1 = new  Queue();
  q1.addAll([9,1,2,3,4,5,6,1,1,9]);
  print("queue addAll method result:$q1");

  q1.addFirst("GFG1");
  print("After adding element to the queue at the first position:$q1");

  q1.addLast("GFG2");
  print("After adding element to the queue at the last position:$q1");

  q1.removeFirst();
  print("After removing first element from the queue:$q1");

  q1.removeLast();
  print("After removing last element from the queue:$q1");

  print('First Element in queue: ${q1.first}');

    //************** LinkedList  associated methods ********************************

  final myLinkedList = LinkedList<Box>();
  myLinkedList.add(Box('First Box',1));
  myLinkedList.add(Box('Third Box',3));
  myLinkedList.add(Box('Five Box',4));
  print("After Adding elements to linked list:");
  printLinkedList(myLinkedList);

  myLinkedList.first.insertAfter(Box('Second Box', 2));
  print("Add new item after the first item:");
  printLinkedList(myLinkedList);

  myLinkedList.last.insertBefore(Box('Fourth Box', 4));
  print("Add new item before last item:");
  printLinkedList(myLinkedList);
}

void printLinkedList(Iterable myLinkedList){
  for (var entry in myLinkedList) {
    print(entry.contents);
  }
}

final class Box extends LinkedListEntry<Box> {
  String contents;
  int number;

  Box(this.contents,this.number);
}
