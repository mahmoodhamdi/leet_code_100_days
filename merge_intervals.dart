class Solution {
  List<List<int>> merge(List<List<int>> intervals) {
    if (intervals.isEmpty) {
      return [];
    }

    // Sort the intervals based on the start time
    intervals.sort((a, b) => a[0].compareTo(b[0]));

    List<List<int>> merged = [];
    List<int> currentInterval = intervals[0];
    merged.add(currentInterval);

    for (List<int> interval in intervals) {
      int currentEnd = currentInterval[1];
      int nextStart = interval[0];
      int nextEnd = interval[1];

      if (currentEnd >= nextStart) {
        // There is overlap
        currentInterval[1] = currentEnd > nextEnd ? currentEnd : nextEnd;
      } else {
        // No overlap, move to the next interval
        currentInterval = interval;
        merged.add(currentInterval);
      }
    }

    return merged;
  }
}

void main() {
  List<List<int>> intervals = [
    [1, 3],
    [2, 6],
    [8, 10],
    [15, 18],
  ];
  Solution s = Solution();
  print(s.merge(intervals));
}
