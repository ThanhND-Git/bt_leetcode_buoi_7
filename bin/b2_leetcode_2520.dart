// https://leetcode.com/problems/count-the-digits-that-divide-a-number/description/
void main() {
  print(countDigits(7));
  print(countDigits(121));
  print(countDigits(1248));
}
//ý tưởng là tách num thành các số rồi xem nó có chia hết có các số đã tách dc hay không
// nếu chia hết thì res sẽ tăng thêm 1
// ví dụ: 121 thành 1, 2, 1 
int countDigits(int num) {
  int n = num, res = 0;
  while (num > 0) {
    // tách num
    var i = num % 10; // chia lấy phần dư
    // kiểm tra
    if (n % i == 0) {
      res++;
    }
    num = (num / 10).truncate(); // num ~/ = 10, chia lấy phần nguyên 121 ~/ 10 = 12
  }

  return res;
}
