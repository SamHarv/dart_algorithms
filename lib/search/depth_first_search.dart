import '../data_structures/stack.dart';
import '../data_structures/graphs/graph.dart';

extension DepthFirstSearch<E> on Graph<E> {
  List<Vertex<E>> depthFirstSearch(Vertex<E> source) {
    final stack = Stack<Vertex<E>>();
    final pushed = <Vertex<E>>{};
    final visited = <Vertex<E>>[];

    stack.push(source);
    pushed.add(source);
    visited.add(source);

    outerLoop:
    while (stack.isNotEmpty) {
      final vertex = stack.peek;
      final neighbours = edges(vertex);
      for (final edge in neighbours) {
        if (!pushed.contains(edge.destination)) {
          stack.push(edge.destination);
          pushed.add(edge.destination);
          visited.add(edge.destination);
          continue outerLoop;
        }
      }
      stack.pop();
    }

    return visited;
  }
}

extension CyclicGraph<E> on Graph<E> {
  bool _hasCycle(Vertex<E> source, Set<Vertex<E>> pushed) {
    pushed.add(source);
    final neighbours = edges(source);
    for (final edge in neighbours) {
      if (!pushed.contains(edge.destination)) {
        if (_hasCycle(edge.destination, pushed)) {
          return true;
        }
      } else {
        return true;
      }
    }
    pushed.remove(source);
    return false;
  }

  bool hasCycle(Vertex<E> source) {
    Set<Vertex<E>> pushed = {};
    return _hasCycle(source, pushed);
  }
}
