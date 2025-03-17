import 'dart:io';
import 'dart:math';

void main() {
  int n;
  int x;
  do {
    print(" Enter n : ");
    n = int.parse(stdin.readLineSync()!);
  } while (n < 1 || n > 100);

  var random = Random();
  List<int> list = List.generate(n, (_) => random.nextInt(100));

  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
  print(" Enter x search : ");
  x = int.parse(stdin.readLineSync()!);
  int listsize = list.length;
  for (int i = 0; i < listsize; i++) {
    if (list[i] == x) {
      list.remove(list[i]);
      listsize--;
    }
  }
  for (int i = 0; i < list.length; i++) {
    print(list[i]);
  }
}
