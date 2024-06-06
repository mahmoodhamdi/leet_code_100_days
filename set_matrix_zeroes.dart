class Solution {
  void setZeroes(List<List<int>> matrix) {
    int rows = matrix.length;
    int cols = matrix[0].length;

    bool firstRowHasZero = false;
    bool firstColHasZero = false;

    // Check if the first row has a zero
    for (int j = 0; j < cols; j++) {
      if (matrix[0][j] == 0) {
        firstRowHasZero = true;
        break;
      }
    }

    // Check if the first column has a zero
    for (int i = 0; i < rows; i++) {
      if (matrix[i][0] == 0) {
        firstColHasZero = true;
        break;
      }
    }

    // Use the first row and first column to mark zeroes
    for (int i = 1; i < rows; i++) {
      for (int j = 1; j < cols; j++) {
        if (matrix[i][j] == 0) {
          matrix[i][0] = 0;
          matrix[0][j] = 0;
        }
      }
    }

    // Zero out cells based on marks in the first row and column
    for (int i = 1; i < rows; i++) {
      if (matrix[i][0] == 0) {
        for (int j = 1; j < cols; j++) {
          matrix[i][j] = 0;
        }
      }
    }

    for (int j = 1; j < cols; j++) {
      if (matrix[0][j] == 0) {
        for (int i = 1; i < rows; i++) {
          matrix[i][j] = 0;
        }
      }
    }

    // Zero out the first row if needed
    if (firstRowHasZero) {
      for (int j = 0; j < cols; j++) {
        matrix[0][j] = 0;
      }
    }

    // Zero out the first column if needed
    if (firstColHasZero) {
      for (int i = 0; i < rows; i++) {
        matrix[i][0] = 0;
      }
    }
  }
}
