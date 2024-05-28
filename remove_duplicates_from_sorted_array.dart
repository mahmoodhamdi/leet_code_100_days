class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.isEmpty) return 0;

    int k = 1; // Initialize the count of unique elements

    // Iterate through the array starting from the second element
    for (int i = 1; i < nums.length; i++) {
      // If the current element is different from the last unique element
      if (nums[i] != nums[k - 1]) {
        // Update the array in-place to include this unique element
        nums[k] = nums[i];
        k++; // Increment the count of unique elements
      }
    }

    return k; // Return the count of unique elements
  }
}

void main() {
  Solution solution = Solution();
  List<int> nums1 = [1, 1, 2];
  int k1 = solution.removeDuplicates(nums1);
  print(k1); // Output: 2
  print(nums1.sublist(0, k1)); // Output: [1, 2]

  List<int> nums2 = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  int k2 = solution.removeDuplicates(nums2);
  print(k2); // Output: 5
  print(nums2.sublist(0, k2)); // Output: [0, 1, 2, 3, 4]
}
