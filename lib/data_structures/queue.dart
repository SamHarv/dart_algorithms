import '/data_structures/linked_list.dart';
import '/data_structures/ring_buffer.dart';

abstract interface class Queue<E> {
  bool enqueue(E element);
  E? dequeue();
  bool get isEmpty;
  E? get peek;
}

// List based queue
class QueueList<E> implements Queue<E> {
  final List<E> _list = <E>[];

  @override
  bool enqueue(E element) {
    _list.add(element);
    return true;
  }

  @override
  E? dequeue() => (isEmpty) ? null : _list.removeAt(0);

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => (isEmpty) ? null : _list.first;

  @override
  String toString() => _list.toString();
}

// LinkedList based queue
class QueueLinkedList<E> implements Queue<E> {
  final _list = LinkedList<E>();

  @override
  bool enqueue(E element) {
    _list.append(element);
    return true;
  }

  @override
  E? dequeue() => _list.pop();

  @override
  bool get isEmpty => _list.isEmpty;

  @override
  E? get peek => _list.head?.value;

  @override
  String toString() => _list.toString();
}

// RingBuffer based queue
class QueueRingBuffer<E> implements Queue<E> {
  final RingBuffer<E> _buffer;

  QueueRingBuffer(int length) : _buffer = RingBuffer<E>(length);

  @override
  bool enqueue(E element) {
    if (_buffer.isFull) return false;
    _buffer.write(element);
    return true;
  }

  @override
  E? dequeue() => _buffer.read();

  @override
  bool get isEmpty => _buffer.isEmpty;

  @override
  E? get peek => _buffer.peek;

  @override
  String toString() => _buffer.toString();
}

// Double Stack based queue
class QueueStack<E> implements Queue<E> {
  final _leftStack = <E>[];
  final _rightStack = <E>[];

  @override
  bool enqueue(E element) {
    _rightStack.add(element);
    return true;
  }

  @override
  E? dequeue() {
    if (_leftStack.isEmpty) {
      _leftStack.addAll(_rightStack.reversed);
      _rightStack.clear();
    }
    if (_leftStack.isEmpty) return null;
    return _leftStack.removeLast();
  }

  @override
  bool get isEmpty => _leftStack.isEmpty && _rightStack.isEmpty;

  @override
  E? get peek => _leftStack.isNotEmpty ? _leftStack.last : _rightStack.first;

  @override
  String toString() {
    final combined = [
      ..._leftStack.reversed,
      ..._rightStack,
    ].join(', ');
    return '[$combined]';
  }
}
