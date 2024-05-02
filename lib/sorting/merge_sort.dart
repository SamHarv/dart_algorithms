List<E> _merge<E extends Comparable<E>>(List<E> listA, List<E> listB) {
  var indexA = 0;
  var indexB = 0;
  final result = <E>[];

  while (indexA < listA.length && indexB < listB.length) {
    final valueA = listA[indexA];
    final valueB = listB[indexB];
    if (valueA.compareTo(valueB) < 0) {
      result.add(valueA);
      indexA++;
    } else if (valueA.compareTo(valueB) > 0) {
      result.add(valueB);
      indexB++;
    } else {
      result.add(valueA);
      result.add(valueB);
      indexA++;
      indexB++;
    }
  }

  if (indexA < listA.length) {
    result.addAll(listA.sublist(indexA));
  }

  if (indexB < listB.length) {
    result.addAll(listB.sublist(indexB));
  }

  return result;
}

List<E> mergeSort<E extends Comparable<E>>(List<E> list) {
  if (list.length < 2) return list;

  final middle = list.length ~/ 2;
  final left = mergeSort(list.sublist(0, middle));
  final right = mergeSort(list.sublist(middle));

  return _merge(left, right);
}
