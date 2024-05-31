class Solution {
  bool containsDuplicate(List<int> nums) {
     nums.sort();

    for (int i = 0; i < nums.length - 1; i++) {
      if (nums[i] == nums[i + 1]) {
        return true;
      }
    }
    return false;
  }
}

// complexity O(nlogn) time and O(1) space


// another solution by using set
// complexity O(n) time and O(n) space
// class Solution {
//   bool containsDuplicate(List<int> nums) {
//     Set<int> seen = Set();

//     for (int num in nums) {
//       if (seen.contains(num)) {
//         return true;
//       }
//       seen.add(num);
//     }
//     return false;
//   }
// }
