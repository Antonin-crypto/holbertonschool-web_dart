String longestUniqueSubstring(String str) {
  int start = 0;
  int maxLength = 0;
  int maxStart = 0;
  Map<String, int> seen = {};

  for (int end = 0; end < str.length; end++) {
    String char = str[end];

    if (seen.containsKey(char) && seen[char]! >= start) {
      start = seen[char]! +1;
    }

    seen[char] = end;

    if(end - start +1 >maxLength) {
      maxLength = end - start + 1;
      maxStart = start;
    }
  }
  return str.substring(maxStart, maxStart + maxLength);
}
