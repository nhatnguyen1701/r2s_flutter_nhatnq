import 'dart:io';

void main() {
  int a, w;
  do {
    print('enter number : ');
    a = int.parse(stdin.readLineSync()!);
  } while (a < 1 || a > 9);
  for (int i = 2; i < 10; i++) {
    w = a * i;
    print('$a x $i = $w');
  }
}
