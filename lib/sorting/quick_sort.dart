extension Swappable<E> on List<E> {
  void swap(int i, int j) {
    if (i == j) return;
    final temp = this[i];
    this[i] = this[j];
    this[j] = temp;
  }
}

class Range {
  final int low;
  final int high;
  const Range(this.low, this.high);
}

Range _partitionDutchFlag<E extends Comparable<E>>(
    List<E> list, int low, int high) {
  final pivot = list[high];
  var smaller = low;
  var equal = low;
  var larger = high;
  while (equal <= larger) {
    if (list[equal].compareTo(pivot) < 0) {
      list.swap(smaller, equal);
      smaller++;
      equal++;
    } else if (list[equal].compareTo(pivot) == 0) {
      equal++;
    } else {
      list.swap(equal, larger);
      larger--;
    }
  }
  return Range(smaller, larger);
}

void quickSortDutchFlag<E extends Comparable<E>>(
    List<E> list, int low, int high) {
  if (low >= high) return;
  final middle = _partitionDutchFlag(list, low, high);
  quickSortDutchFlag(list, low, middle.low - 1);
  quickSortDutchFlag(list, middle.high + 1, high);
}
