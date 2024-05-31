class Solution {
  List<int> productExceptSelf(List<int> nums) {
    int n = nums.length;
    List<int> answer = List<int>.filled(n, 1);

    // First pass: calculate left products
    int leftProduct = 1;
    for (int i = 0; i < n; i++) {
      answer[i] = leftProduct;
      leftProduct *= nums[i];
    }

    // Second pass: calculate right products and multiply with left products
    int rightProduct = 1;
    for (int i = n - 1; i >= 0; i--) {
      answer[i] *= rightProduct;
      rightProduct *= nums[i];
    }

    return answer;
  }
}

void main() {
  List<int> nums = [1, 2, 3, 4];

  Solution solution = Solution();
  print(solution.productExceptSelf(nums));
}
