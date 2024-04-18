import 'package:dart_algorithms/data_structures/trees/avl_tree.dart';
// import 'package:dart_algorithms/data_structures/trees/binary_search_tree.dart';

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
  final tree = AvlTree<num>();
  tree.insert(15);
  tree.insert(10);
  tree.insert(16);
  tree.insert(18);
  print(tree);
  tree.remove(10);
  print(tree);
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
