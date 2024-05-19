// class Solution {
//  List<int> twoSum(List<int> nums, int target) {
// for (var i = 0; i < nums.length; i++) {
//   for (var j = i + 1; j < nums.length; j++) {
//     if (nums[i] + nums[j] == target) {
//       return [i, j];
//     }
//   }
// }
// return [];
//  }
// }
// complexity O(n^2) time and O(1) space
//note: use two loops but the time complexity of the algorithm to O(n^2) and space complexity of O(1)
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
// complexity O(n) time and O(n) space
//note: use hashmap to store the numbers and their indices to reduce the time complexity of the algorithm to O(n)
