class BubbleSort {
  // Bubble sort O(n^2)
  List<int> bubbleSort(List<int> list) {
    for (int i = 0; i < list.length; i++) {
      for (int j = list.length - 1; j > i; j--) {
        if (list[j] < list[j - 1]) {
          int temp = list[j];
          list[j] = list[j - 1];
          list[j - 1] = temp;
        }
        print("Inner loop: $list");
      }
      print("Outer loop: $list");
    }
    return list;
  }
}
