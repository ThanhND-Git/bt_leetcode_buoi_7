// https://leetcode.com/problems/difference-between-element-sum-and-digit-sum-of-an-array/description/
void main(List<String> args) {
  print(differenceOfSum([1, 15, 6, 3]));
  print(differenceOfSum([1, 2, 3, 4]));
}

int differenceOfSum(List<int> nums) {
  int element = 0; // tính tổng các phần tử trong nums
  int digit = 0; // tính tổng các chữ số trong nums
  // 1 vòng lặp để tính tổng
  for (int num in nums) {
    digit += digitSum(num);
    element += num;
  }
  // kết quả
  return (digit - element).abs();
}

// hàm tính tổng các chữ số
int digitSum(int num) {
  int sum = 0;
  while (num != 0) {
    sum = sum + num % 10;
    num = num ~/ 10;
  }
  return sum;
}
