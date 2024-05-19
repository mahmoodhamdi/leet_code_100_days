class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> numMap =
        {}; // Create a map to store the numbers and their indices

    for (var i = 0; i < nums.length; i++) {
      int complement =
          target - nums[i]; // Calculate the complement of the current number

      if (numMap.containsKey(complement)) {
        // Check if the complement exists in the map
        return [
          numMap[complement]!,
          i
        ]; // Return the indices of the complement and the current number
      }

      numMap[nums[i]] = i; // Add the current number and its index to the map
    }

    return []; // Return an empty list if no solution is found
  }
}
