// https://leetcode.com/problems/largest-odd-number-in-string/description/
void main(List<String> args) {
  print(largestOddNumber("52"));
  print(largestOddNumber("4206"));
  print(largestOddNumber("35427"));
}
// kiểm tra từ phải sang trái xem num[i] có lẻ hay không
// nếu lẻ thì trả lại số lẻ lớn nhất
String largestOddNumber(String num) {
  for (int i = num.length - 1; i >= 0; i--) {
    if (isCheckOddInteger(num[i])) {
      return num.substring(0, i + 1);
    }
  }
  return "";
}
// hàm kiểm tra chữ số lẻ hay không
bool isCheckOddInteger(String n) {
  return (int.parse(n)) % 2 != 0;
}
