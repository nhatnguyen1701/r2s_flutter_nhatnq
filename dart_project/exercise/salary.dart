import 'dart:io';

void main() {
  String grade;
  num salary, allowance, totalSalary;

  print("Enter your salary: ");
  salary = num.parse(stdin.readLineSync()!);

  print("Enter your grade: ");
  grade = stdin.readLineSync()!;

  switch (grade) {
    case "A":
      allowance = 300;
      break;
    case "B":
      allowance = 250;
      break;
    default:
      allowance = 100;
  }
  totalSalary = salary + allowance;
  print("Your total salary is: $totalSalary");
}
