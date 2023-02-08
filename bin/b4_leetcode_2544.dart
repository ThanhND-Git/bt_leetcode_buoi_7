// https://leetcode.com/problems/alternating-digit-sum/
void main(List<String> args) {
  print(alternateDigitSum(521));
  print(alternateDigitSum(111));
  print(alternateDigitSum(886996));
  print(alternateDigitSum(1748));
}
int alternateDigitSum(int n) {
  int sum = 0;
  //chuyển n thành String để tách từng phần tử của n ra
  String stringN = n.toString();
  for (int i = 0; i < stringN.length; i++){
    if(i%2 == 0){
      //phần tử thứ 0,2,4... thì +
      sum += int.parse(stringN[i]);
    }else{
      //phần tử thứ 1,3,5... thì -
      sum -= int.parse(stringN[i]);
    }
  }
  return sum;
}

// int alternateDigitSum(int n) {
//   int sum = 0; // tổng
//   int mult = 1;
//   int digits = 0; // số chữ số có trong n. VD 521 có 3 chữ số
//   while (n > 0) {
//     var i = n % 10; // i là số đã tách ra đc từ n. VD 521 tách thành 1, 2, 5
//     sum += i * mult;
//     mult *= -1;
//     n ~/= 10;
//     digits++;
//   }
//   return sum * (digits % 2 == 0 ? -1 : 1); // nếu digit chẵn thì nhân với -1 và ngược lại
// }
