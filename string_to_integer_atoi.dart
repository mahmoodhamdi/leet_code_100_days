class Solution {
  static const digits = {
    "1": 1,
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9,
    "0": 0
  };
  static const MAX = 2147483647;
  static const MIN = -2147483648;

  int myAtoi(String s) {
    int res = 0;
    int sign = 1;

    int current = 0;

    // skip whitespace
    while (current < s.length && s[current] == ' ') {
      current++;
    }

    //read sign
    if (current < s.length && (s[current] == '-' || s[current] == '+')) {
      sign = s[current++] == '-' ? -1 : 1;
    }

    // read digits
    while (current < s.length && digits.containsKey(s[current])) {
      int digit = digits[s[current++]]!;

      // check overflow
      if (sign == -1 && res < (MIN + digit) / 10) {
        return MIN;
      } else if (res > (MAX - digit) / 10) {
        return MAX;
      }

      res = res * 10 + sign * digit;
    }

    return res;
  }
}
