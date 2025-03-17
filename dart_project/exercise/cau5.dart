import 'dart:io';
import 'dart:math';

void main() {
  int n;
  do {
    print(" Enter n : ");
    n = int.parse(stdin.readLineSync()!);
  } while (n < 1 || n > 100);

  var random = Random();
  List<int> list = List.generate(n, (_) => random.nextInt(100));

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print("mãng đã đảo");
  for (int i = list.length - 1; i >= 0; i--) {
    print(list[i]);
  }
}
