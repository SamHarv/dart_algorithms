import 'package:dart_algorithms/data_structures/linked_list.dart';

void main() {
  // List<List<int>> matrixA = [
  //   [2, 4, 9],
  //   [8, 1, 4],
  //   [10, 5, 6]
  // ];
  // List<List<int>> matrixB = [
  //   [1, 2, 3],
  //   [4, 5, 6],
  //   [7, 8, 9]
  // ];
  // // List<int> list = [9, 8, 7, 6, 5, 4, 3, 2, 1];
  // List<List<int>> matrixC =
  //     MatrixMultiplication().matrixMultiplication(matrixA, matrixB);
  // print(matrixC);

  // LinkedList
  final list = LinkedList<int>();
//   var list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);
//   list.append(2);
  list.append(4);
  list.append(5);
//   list.append(2);

  list.removeAll(2);
  print(list);

//   list.reverse();
//   print(list);

//   for (final element in list) {
//     print(element);
//   }

//   print("Before: $list");

//   var middleNode = list.nodeAt(2)!;
//   list.insertAfter(middleNode, 42);

//   final poppedValue = list.pop();
//   final removedValue = list.removeLast();

//   final firstNode = list.nodeAt(0);
//   final removedValue = list.removeAfter(firstNode!);

//   print("After: $list");
//   print("Removed value: $removedValue");

//   final middleNode = getMiddle(list);
//   print(middleNode?.value);
}
