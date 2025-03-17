import 'dart:io';
import 'dart:math';

void main() {
  int n;
  double sum = 0;

  do {
    print(" Enter n : ");
    n = int.parse(stdin.readLineSync()!);
  } while (n < 1 || n > 100);

  var random = Random();
  List<int> list = List.generate(n, (_) => random.nextInt(100));
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
    sum = sum + list[i];
  }

  sum = sum / n;
  print("Average of the list is : $sum");
}
