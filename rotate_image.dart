class Solution {
  void rotate(List<List<int>> matrix) {
    int n = matrix.length;

    // Transpose the matrix
    for (int i = 0; i < n; i++) {
      for (int j = i + 1; j < n; j++) {
        int temp = matrix[i][j];
        matrix[i][j] = matrix[j][i];
        matrix[j][i] = temp;
      }
    }

    // Reverse each row
    for (int i = 0; i < n; i++) {
      matrix[i].reverse();
    }
  }
}

extension ListReverse<T> on List<T> {
  void reverse() {
    int start = 0;
    int end = this.length - 1;
    while (start < end) {
      T temp = this[start];
      this[start] = this[end];
      this[end] = temp;
      start++;
      end--;
    }
  }
}

void main() {
  Solution sol = Solution();

  List<List<int>> matrix1 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  sol.rotate(matrix1);
  print(matrix1); // Output: [[7, 4, 1], [8, 5, 2], [9, 6, 3]]

  List<List<int>> matrix2 = [
    [5, 1, 9, 11],
    [2, 4, 8, 10],
    [13, 3, 6, 7],
    [15, 14, 12, 16]
  ];
  sol.rotate(matrix2);
  print(
      matrix2); // Output: [[15, 13, 2, 5], [14, 3, 4, 1], [12, 6, 8, 9], [16, 7, 10, 11]]
}
