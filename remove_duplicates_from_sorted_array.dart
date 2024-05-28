class Solution {
  int removeDuplicates(List<int> nums) {
    int result = 0;
    for (var i = 1; i < nums.length; i++) {
      if ( nums[i] != nums[i - 1]) {
        result++;
      }
    }
    return result+1;
  }
}

void main() {
  Solution s = Solution();
  print(s.removeDuplicates([1, 1, 2]));
}
