class Solution {
  int maxSubArray(List<int> nums) {
    if (nums.isEmpty) return 0; // Handling the case where the list is empty.
    
    int maxSum = nums[0]; // Initialize maxSum to the first element.
    int currentSum = 0; // Initialize currentSum to 0.

    for (int num in nums) {
      if (currentSum < 0) {
        currentSum = 0; // Reset currentSum if it becomes negative.
      }
      currentSum += num; // Add the current number to currentSum.
      if (currentSum > maxSum) {
        maxSum = currentSum; // Update maxSum if currentSum is greater.
      }
    }

    return maxSum; // Return the maximum subarray sum found.
  }
}

void main() {
  List<int> nums = [-2, 1, -3, 4, -1, 2, 1, -5, 4];
  Solution solution = Solution();
  print(solution.maxSubArray(nums));
}