class Solution {
  int romanToInt(String s) {
    Map<String, int> roman = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
      'IV': 4,
      'IX': 9,
      'XL': 40,
      'XC': 90,
      'CD': 400,
      'CM': 900
    };
    int result = 0;
    for (int i = 0; i < s.length; i++) {
      if (i + 1 < s.length && roman[s.substring(i, i + 2)] != null) {
        result += roman[s.substring(i, i + 2)]!;
        i++;
      } else {
        result += roman[s[i]]!;
      }
    }
    return result;
  }
}
void main() {
  print(Solution().romanToInt('III'));
}
