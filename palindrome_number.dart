class Solution {
  bool isPalindrome(int x) {
    // Negative numbers are not palindromes
    if (x < 0) {
      return false;
    }

    // Numbers that end with 0 (but are not 0) are not palindromes
    if (x != 0 && x % 10 == 0) {
      return false;
    }

    int reversed = 0;

    // Reverse half of the number
    while (x > reversed) {
      reversed = reversed * 10 + x % 10;
      x ~/= 10;
    }

    // When the length is an odd number, we can get rid of the middle digit by reversed ~/ 10
    return x == reversed || x == reversed ~/ 10;
  }
}
