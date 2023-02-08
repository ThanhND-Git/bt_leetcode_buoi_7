//https://leetcode.com/problems/assign-cookies/
void main(List<String> args) {
  print(findContentChildren([1, 2, 3], [1, 1]));
  print(findContentChildren([1,2], [1, 2, 3]));
}

int findContentChildren(List<int> g, List<int> s) {
  g.sort();
  s.sort();
  var j = 0;
  for (var i = 0; i < s.length && j < g.length; i++) {
    if (s[i] >= g[j]) {
      j++;
    }
  }
  return j;
}
