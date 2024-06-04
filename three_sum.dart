class Solution {
  List<List<int>> threeSum(List<int> nums) {
    // Result list
    List<List<int>> result = [];

    // Sort the array
    nums.sort();

    // Iterate through the array
    for (int i = 0; i < nums.length - 2; i++) {
      // Skip duplicates for the fixed number
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }

      // Use two pointers to find the other two numbers
      int left = i + 1;
      int right = nums.length - 1;

      while (left < right) {
        int sum = nums[i] + nums[left] + nums[right];

        if (sum == 0) {
          // Found a triplet
          result.add([nums[i], nums[left], nums[right]]);

          // Skip duplicates for the second number
          while (left < right && nums[left] == nums[left + 1]) {
            left++;
          }
          // Skip duplicates for the third number
          while (left < right && nums[right] == nums[right - 1]) {
            right--;
          }

          // Move pointers inward
          left++;
          right--;
        } else if (sum < 0) {
          left++; // We need a larger sum
        } else {
          right--; // We need a smaller sum
        }
      }
    }

    return result;
  }
}
