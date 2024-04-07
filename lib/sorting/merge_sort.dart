class MergeSort {
  // Merge O(n)
  List<int> merge(List<int> left, List<int> right) {
    List<int> result = [];
    int i = 0;
    int j = 0;
    while (i < left.length && j < right.length) {
      if (left[i] < right[j]) {
        result.add(left[i]);
        i++;
      } else {
        result.add(right[j]);
        j++;
      }
    }
    while (i < left.length) {
      result.add(left[i]);
      i++;
    }
    while (j < right.length) {
      result.add(right[j]);
      j++;
    }
    return result;
  }

  // Merge sort O(n log n)
  List<int> mergeSort(List<int> list) {
    if (list.length <= 1) {
      // Base case: list is already sorted
      return list;
    }
    int middle = (list.length / 2).floor();
    List<int> left = list.sublist(0, middle);
    List<int> right = list.sublist(middle);
    return merge(mergeSort(left), mergeSort(right));
  }
}
