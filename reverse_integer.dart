class Solution {
  int reverse(int x) {
    bool isNegative = (x < 0);

    if (isNegative) x = x * -1;
    int reversedDigits = 0;

    while (x > 0) {
      int lastDigit = x % 10;

      reversedDigits = (reversedDigits * 10) + lastDigit;

      x = x ~/ 10;
    }

    if (reversedDigits < -2147483648 || reversedDigits > 2147483649) return 0;

    return (isNegative) ? reversedDigits * -1 : reversedDigits;
  }
}
