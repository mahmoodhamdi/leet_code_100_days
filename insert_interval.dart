import 'dart:math';

class Solution {
  List<List<int>> insert(List<List<int>> intervals, List<int> newInterval) {
    List<List<int>> result = [];
    int i = 0;
    int n = intervals.length;

    // Add all intervals that come before the new interval
    while (i < n && intervals[i][1] < newInterval[0]) {
      result.add(intervals[i]);
      i++;
    }

    // Merge all overlapping intervals with the new interval
    while (i < n && intervals[i][0] <= newInterval[1]) {
      newInterval[0] = min(newInterval[0], intervals[i][0]);
      newInterval[1] = max(newInterval[1], intervals[i][1]);
      i++;
    }
    result.add(newInterval);

    // Add all intervals that come after the new interval
    while (i < n) {
      result.add(intervals[i]);
      i++;
    }

    return result;
  }
}

void main() {
  Solution sol = Solution();
  print(sol.insert([
    [1, 3],
    [6, 9]
  ], [
    2,
    5
  ])); // Output: [[1,5],[6,9]]
  print(sol.insert([
    [1, 2],
    [3, 5],
    [6, 7],
    [8, 10],
    [12, 16]
  ], [
    4,
    8
  ])); // Output: [[1,2],[3,10],[12,16]]
}
