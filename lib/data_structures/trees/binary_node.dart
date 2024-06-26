class BinaryNode<T> {
  BinaryNode(this.value);
  T value;
  BinaryNode<T>? leftChild;
  BinaryNode<T>? rightChild;

  @override
  String toString() {
    return _diagram(this);
  }

  String _diagram(
    BinaryNode<T>? node, [
    String top = "",
    String root = "",
    String bottom = "",
  ]) {
    if (node == null) {
      return "$root null\n";
    }

    if (node.leftChild == null && node.rightChild == null) {
      return "$root ${node.value}\n";
    }

    final a = _diagram(node.rightChild, "$top ", "$top┌──", "$top│ ");
    final b = "$root${node.value}\n";
    final c = _diagram(node.leftChild, "$bottom│ ", "$bottom└──", "$bottom ");

    return "$a$b$c";
  }

  void traverseInOrder(void Function(BinaryNode<T> value) action) {
    leftChild?.traverseInOrder(action);
    action(this);
    rightChild?.traverseInOrder(action);
  }

  void traversePreOrder(void Function(BinaryNode<T> value) action) {
    action(this);
    leftChild?.traversePreOrder(action);
    rightChild?.traversePreOrder(action);
  }

  void traversePostOrder(void Function(BinaryNode<T> value) action) {
    leftChild?.traversePostOrder(action);
    rightChild?.traversePostOrder(action);
    action(this);
  }
}
