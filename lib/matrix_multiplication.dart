class MatrixMultiplication {
  List<List<int>> matrixMultiplication(List<List<int>> a, List<List<int>> b) {
    int aRows = a.length;
    int aCols = a[0].length;
    int bRows = b.length;
    int bCols = b[0].length;
    if (aCols != bRows) {
      throw Exception("Incompatible matrices");
    }
    List<List<int>> result = List.generate(aRows, (i) => List.filled(bCols, 0));
    for (int i = 0; i < aRows; i++) {
      for (int j = 0; j < bCols; j++) {
        for (int k = 0; k < aCols; k++) {
          result[i][j] += a[i][k] * b[k][j];
        }
      }
    }
    return result;
  }
}
