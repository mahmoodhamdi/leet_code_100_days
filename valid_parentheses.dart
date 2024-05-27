class Solution {
  bool isValid(String s) {
    List<String> stack = [];
    for (int i = 0; i < s.length; i++) {
      if (s[i] == '(' || s[i] == '[' || s[i] == '{') {
        stack.add(s[i]);
      } else if (s[i] == ')' && stack.isNotEmpty && stack.last == '(') {
        stack.removeLast();
      } else if (s[i] == ']' && stack.isNotEmpty && stack.last == '[') {
        stack.removeLast();
      } else if (s[i] == '}' && stack.isNotEmpty && stack.last == '{') {
        stack.removeLast();
      } else {
        return false;
      }
    }
    return stack.isEmpty;
  }
}

void main() {
  Solution s = Solution();
  print(s.isValid("()[]{}((()))"));
}