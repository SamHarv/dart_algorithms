import 'trees/heap.dart';
import 'queue.dart';

export 'trees/heap.dart' show Priority;

class PriorityQueue<E extends Comparable<E>> implements Queue<E> {
  late Heap<E> _heap;

  PriorityQueue({List<E>? elements, Priority priority = Priority.max}) {
    _heap = Heap<E>(elements: elements, priority: priority);
  }

  @override
  bool get isEmpty => _heap.isEmpty;

  @override
  E? get peek => _heap.peek;

  @override
  bool enqueue(E element) {
    _heap.insert(element);
    return true;
  }

  @override
  E? dequeue() => _heap.remove();
}
