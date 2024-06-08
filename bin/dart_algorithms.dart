// import 'package:dart_algorithms/data_structures/trees/avl_tree/avl_tree.dart';
// import 'package:dart_algorithms/data_structures/trees/tries/string_trie.dart';
// import 'package:dart_algorithms/data_structures/trees/tries/trie.dart';
// import 'package:dart_algorithms/data_structures/trees/binary_search_tree.dart';

// import 'package:dart_algorithms/data_structures/priority_queue.dart';
// import 'package:dart_algorithms/sorting/bubble_sort.dart';
// import 'package:dart_algorithms/sorting/insertion_sort.dart';
// import 'package:dart_algorithms/sorting/selection_sort.dart';
// import 'package:dart_algorithms/data_structures/trees/heap.dart';
// import 'package:dart_algorithms/search/binary_search.dart';

import 'package:dart_algorithms/data_structures/graphs/graph.dart';
import 'package:dart_algorithms/sorting/heap_sort.dart';
import 'package:dart_algorithms/sorting/merge_sort.dart';
import 'package:dart_algorithms/sorting/radix_sort.dart';
import 'package:dart_algorithms/sorting/quick_sort.dart';

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
//   final list = LinkedList<int>();
// //   var list = LinkedList<int>();
//   list.push(3);
//   list.push(2);
//   list.push(1);
// //   list.append(2);
//   list.append(4);
//   list.append(5);
// //   list.append(2);

//   list.removeAll(2);
//   print(list);

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

// // QueueList
//   final queue = QueueList<String>();
//   queue.enqueue('Sam');
//   queue.enqueue('Scarlett');
//   queue.enqueue('Daisy');
//   print(queue);

//   queue.dequeue();
//   print(queue);

//   print(queue.peek);
//   print(queue);

  // // QueueLinkedList
  // final queueLinkedList = QueueLinkedList<String>();
  // queueLinkedList.enqueue('Sam');
  // queueLinkedList.enqueue('Scarlett');
  // queueLinkedList.enqueue('Daisy');
  // print(queueLinkedList);

  // queueLinkedList.dequeue();
  // print(queueLinkedList);

  // print(queueLinkedList.peek);
  // print(queueLinkedList);

  // // QueueRingBuffer
  // final queueRingBuffer = QueueRingBuffer<String>(10);
  // queueRingBuffer.enqueue('Sam');
  // queueRingBuffer.enqueue('Scarlett');
  // queueRingBuffer.enqueue('Daisy');
  // print(queueRingBuffer);

  // queueRingBuffer.dequeue();
  // print(queueRingBuffer);

  // print(queueRingBuffer.peek);
  // print(queueRingBuffer);

  // QueueStack
  // final queueStack = QueueStack<String>();
  // queueStack.enqueue('Sam');
  // queueStack.enqueue('Scarlett');
  // queueStack.enqueue('Daisy');
  // print(queueStack);

  // queueStack.dequeue();
  // print(queueStack);

  // print(queueStack.peek);
  // print(queueStack);

  // Tree
  // final tree = makeBeverageTree();
  // print("Depth first traversal:");
  // tree.forEachDepthFirst((node) => print(node.value));
  // print("\nLevel order traversal:");
  // tree.forEachLevelOrder((node) => print(node.value));

  // final searchResult1 = tree.search('Tea');
  // print('\n${searchResult1?.value}');

  // final searchResult2 = tree.search('Water');
  // print(searchResult2?.value);

  // Binary Tree
  // final tree = createBinaryTree();
  // // print(tree);
  // tree.traverseInOrder(print);
  // // tree.traversePreOrder(print);
  // // tree.traversePostOrder(print);

  // Binary Search Tree
  // final tree = BinarySearchTree<num>();
  // for (var i = 0; i < 5; i++) {
  //   tree.insert(i);
  // }
  // print(tree);
  // final tree = buildExampleTree();
  // // if (tree.contains(5)) {
  // //   print("Found 5!");
  // // } else {
  // //   print("Did not find 5");
  // // }
  // print("Tree before removal:");
  // print(tree);
  // tree.remove(3);
  // print("Tree after removal:");
  // print(tree);

  // AVL Tree
  // final tree = AvlTree<num>();
  // tree.insert(15);
  // tree.insert(10);
  // tree.insert(16);
  // tree.insert(18);
  // print(tree);
  // tree.remove(10);
  // print(tree);

  // String Trie
  // final trie = StringTrie();
  // trie.insert('car');
  // trie.insert('card');
  // trie.insert('care');
  // trie.insert('cared');
  // trie.insert('cars');
  // trie.insert('carbs');
  // trie.insert('carapace');
  // trie.insert('cargo');
  // print('Collections starting with "car":');
  // final prefixedWithCar = trie.matchPrefix('car');
  // print(prefixedWithCar);
  // print('\nCollections starting with "care":');
  // final prefixedWithCare = trie.matchPrefix('care');
  // print(prefixedWithCare);

  // Trie
  // final trie = Trie<int, List<int>>();
  // trie.insert('cut'.codeUnits);
  // trie.insert('cute'.codeUnits);
  // if (trie.contains('cute'.codeUnits)) {
  //   print('Found "cute"');
  // }
  // trie.remove('cut'.codeUnits);
  // assert(!trie.contains('cut'.codeUnits));

  // Binary Search
  // final list = <num>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  // final search8 = list.indexOf(8);
  // final binarySearch8 = list.binarySearch(8);
  // print('Index of: $search8');
  // print('Binary search: $binarySearch8');

  // Heap
  // final heap = Heap<num>();
  // heap.insert(10);
  // heap.insert(7);
  // heap.insert(2);
  // heap.insert(5);
  // heap.insert(1);
  // final index = heap.indexOf(7);
  // print(heap);
  // print(index);

  // Priority Queue
  // var priorityQueue = PriorityQueue<num>(
  //   elements: [1, 12, 3, 4, 1, 6, 8, 7],
  // );
  // while (!priorityQueue.isEmpty) {
  //   print(priorityQueue.dequeue()!);
  // }

  // Bubble, selection and insertion Sort
  // final list = <num>[9, 4, 10, 3];
  // print("Original: $list");
  // // bubbleSort(list);
  // // selectionSort(list);
  // insertionSort(list);
  // print("Sorted: $list");

  // Merge Sort
  // final list = <num>[7, 2, 6, 3, 9];
  // final sorted = mergeSort(list);
  // print("Original: $list");
  // print("Sorted: $sorted");

  // Radix Sort
  // final list = <int>[170, 45, 75, 90, 802, 24, 2, 66];
  // print("Original: $list");
  // // list.radixSort();
  // // print("Sorted: $list");
  // // print(13.digits());
  // // print(1345.digitAt(2));
  // list.lexicographicalSort();
  // print("Sorted: $list");

  // Heap Sort
  // final sorted = heapSort<num>([9, 4, 10, 3]);
  // print(sorted);
  // final list = <num>[6, 12, 2, 26, 8, 18, 21, 9, 5];
  // print("Original: $list");
  // list.heapSortInPlace();
  // print("Sorted: $list");

  // Quick Sort
  // final list = <num>[9, 4, 10, 3];
  // print("Original: $list");
  // quickSortDutchFlag(list, 0, list.length - 1);
  // print("Sorted: $list");

  // Graph
  // AdjacencyList
  // final graph = AdjacencyList<String>();
  // AdjacencyMatrix
  final graph = AdjacencyMatrix<String>();
  final singapore = graph.createVertex('Singapore');
  final tokyo = graph.createVertex('Tokyo');
  final hongKong = graph.createVertex('Hong Kong');
  final detroit = graph.createVertex('Detroit');
  final sanFrancisco = graph.createVertex('San Francisco');
  final washingtonDC = graph.createVertex('Washington DC');
  final austinTexas = graph.createVertex('Austin Texas');
  final seattle = graph.createVertex('Seattle');
  graph.addEdge(singapore, hongKong, weight: 300);
  graph.addEdge(singapore, tokyo, weight: 500);
  graph.addEdge(hongKong, tokyo, weight: 250);
  graph.addEdge(tokyo, detroit, weight: 450);
  graph.addEdge(tokyo, washingtonDC, weight: 300);
  graph.addEdge(hongKong, sanFrancisco, weight: 600);
  graph.addEdge(detroit, austinTexas, weight: 50);
  graph.addEdge(austinTexas, washingtonDC, weight: 292);
  graph.addEdge(sanFrancisco, washingtonDC, weight: 337);
  graph.addEdge(washingtonDC, seattle, weight: 277);
  graph.addEdge(sanFrancisco, seattle, weight: 218);
  graph.addEdge(austinTexas, sanFrancisco, weight: 297);
  print(graph);
  final cost = graph.weight(singapore, tokyo)?.toInt();
  print('Cost: $cost');
  print('San Francisco Ongoing Flights:');
  for (final edge in graph.edges(sanFrancisco)) {
    print(
        'from: ${edge.source}, to: ${edge.destination}, cost: ${edge.weight}');
  }
}

// Build Balanced Binary Search Tree
// BinarySearchTree<num> buildExampleTree() {
//   final tree = BinarySearchTree<num>();
//   tree.insert(3);
//   tree.insert(1);
//   tree.insert(4);
//   tree.insert(0);
//   tree.insert(2);
//   tree.insert(5);
//   return tree;
// }

// Build Binary Tree
// BinaryNode<int> createBinaryTree() {
//   final zero = BinaryNode(0);
//   final one = BinaryNode(1);
//   final five = BinaryNode(5);
//   final seven = BinaryNode(7);
//   final eight = BinaryNode(8);
//   final nine = BinaryNode(9);

//   seven.leftChild = one;
//   one.leftChild = zero;
//   one.rightChild = five;
//   seven.rightChild = nine;
//   nine.leftChild = eight;

//   return seven;
// }

// Build tree
// TreeNode<String> makeBeverageTree() {
//   final tree = TreeNode('Beverages');
//   final hot = TreeNode('Hot');
//   final cold = TreeNode('Cold');
//   tree.add(hot);
//   tree.add(cold);

//   final tea = TreeNode('Tea');
//   final coffee = TreeNode('Coffee');
//   final chocolate = TreeNode('Chocolate');
//   hot.add(tea);
//   hot.add(coffee);
//   hot.add(chocolate);

//   final blackTea = TreeNode('Black');
//   final greenTea = TreeNode('Green');
//   final chaiTea = TreeNode('Chai');
//   tea.add(blackTea);
//   tea.add(greenTea);
//   tea.add(chaiTea);

//   final soda = TreeNode('Soda');
//   final milk = TreeNode('Milk');
//   cold.add(soda);
//   cold.add(milk);

//   final gingerAle = TreeNode('Ginger Ale');
//   final bitterLemon = TreeNode('Bitter Lemon');
//   soda.add(gingerAle);
//   soda.add(bitterLemon);

//   return tree;
// }
