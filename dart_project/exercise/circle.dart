import 'dart:io';

num area(num pi, num r) {
  return 2 * pi * r;
}

num circumference(num pi, num r) {
  return pi * r * r;
}

void main() {
  const pi = 3.14;
  print("1. calculate the area of a circle");
  print("2. calculate the circumference of a circle");
  print("3. Exit");
  int choice = 0;
  while (choice != 3) {
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        print("Enter the radius of the circle: ");
        num radius = num.parse(stdin.readLineSync()!);

        print("The area of the circle is: ${area(pi, radius)}");
        break;
      case 2:
        print("Enter the radius of the circle: ");
        num radius = num.parse(stdin.readLineSync()!);

        print(
            "The circumference of the circle is ${circumference(pi, radius)}");
        break;
    }
  }
}
