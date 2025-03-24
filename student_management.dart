import 'dart:io';

import 'student.dart';

void printInfo(Student student) {
  // do nothing
  print("Mã sinh viên :${student.id}");
  print("Tên :${student.name} ");
  print("Điểm môn 1: ${student.mark1}");
  print("Điểm môn 2: ${student.mark2}");
  print("Điểm môn 3: ${student.mark3}");
  print("Tổng điểm: ${student.total()}");
  print("Điểm trung bình: ${student.average()}");
}

void inputInfo(Student student) {
  // do nothing
  print("Nhập mã sinh viên (not duplicated): ");
  student.id = stdin.readLineSync()!;
  print("Nhập tên sinh viên: ");
  student.name = stdin.readLineSync()!;
  print("Nhập điểm môn 1: ");
  student.mark1 = double.parse(stdin.readLineSync()!);
  print("Nhập điểm môn 2: ");
  student.mark2 = double.parse(stdin.readLineSync()!);
  print("Nhập điểm môn 3: ");
  student.mark3 = double.parse(stdin.readLineSync()!);
}

void searchName(List<Student> students, String name) {
  for (var student in students) {
    if (student.name == name) {
      printInfo(student);
    }
  }
}

void searchID(List<Student> students, String id) {
  for (var student in students) {
    if (student.id == id) {
      printInfo(student);
    }
  }
}

void main() {
  // var student1 = Student();
  // var student2 = Student();
  // var student3 = Student();

  List<Student> students = [];
  int choice;
  do {
    print("1. add");
    print("2. display");
    print("3. Search name ");
    print("4. search ID ");
    print("0. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        var student = Student();
        inputInfo(student);
        students.add(student);
        break;
      case 2:
        for (var student in students) {
          printInfo(student);
        }
        break;
      case 3:
        print("Nhập tên cần tìm: ");
        var name = stdin.readLineSync()!;
        searchName(students, name);
        break;
      case 4:
        print("Nhập mã sinh viên cần tìm: ");
        var id = stdin.readLineSync()!;
        searchID(students, id);
        break;
      default:
        print("Invalid choice");
    }
  } while (choice != 0);

  // student2.name = "Nguyễn Văn B";
  // student2.mark1 = 90;
  // student2.mark2 = 60;
  // student2.mark3 = 80;

  // print(" thông tin sinh viên 2:${student2.name} ");
  // print("Điểm môn 1: ${student2.mark1}");
  // print("Điểm môn 2: ${student2.mark2}");
  // print("Điểm môn 3: ${student2.mark3}");
  // print("Tổng điểm: ${student2.total()}");
  // print("Điểm trung bình: ${student2.average()}");

  // student3.name = "Nguyễn Văn C";
  // student3.mark1 = 70;
  // student3.mark2 = 60;
  // student3.mark3 = 90;

  // print(" thông tin sinh viên 3:${student3.name} ");
  // print("Điểm môn 1: ${student3.mark1}");
  // print("Điểm môn 2: ${student3.mark2}");
  // print("Điểm môn 3: ${student3.mark3}");
  // print("Tổng điểm: ${student3.total()}");
  // print("Điểm trung bình: ${student3.average()}");
}
