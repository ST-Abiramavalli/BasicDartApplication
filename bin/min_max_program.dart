import "dart:math";

void main() {
  var list = [121, 12, 33, 14, 3];
  list.sort();
  print("Smallest value in the list using sort method: ${list.first}");
  print("Largest value in the list using sort method: ${list.last}");

  var smallestValue = list.reduce(min);
  var largestValue = list.reduce(max);
  print("Smallest value in the list using reduce method: $smallestValue");
  print("Largest value in the list using reduce method: $largestValue");

  var smallValue = list.fold(list[0],min);
  var largeValue = list.fold(list[0],max);
  print("Smallest value in the list using fold method: $smallValue");
  print("Largest value in the list using fold method: $largeValue");
}
