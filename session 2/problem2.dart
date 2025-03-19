import 'dart:io';

int factorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  }
  return n * factorial(n - 1);
}

void main() {
  int num;
  print("Nhập số cần tính giai thừa: ");
  while (true) {
    try {
      num = int.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid input. Please enter a number.");
    }
  }
  print("Giai thừa của $num là: ${factorial(num)}");
}
