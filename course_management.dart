import 'dart:io';

import 'course.dart';

List<Course> courses = [];
late var choice;
void main() {
  do {
    danhmuc();
    do {
      print("Enter your choice :(Enter number) ");
      try {
        choice = int.parse(stdin.readLineSync()!);
        break;
      } catch (e) {
        print("Invalid choice ");
      }
    } while (true);
    menu();
  } while (choice != 0);
}

void danhmuc() {
  print("Chọn chức năng");
  print("1. add");
  print("2. display");
  print("3. Search course");
  print("0. Exit");
}

void search() {
  print("Enter option number : (1 -Search code/ 2 -Search name)");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      print("Enter course code search: ");
      var code = stdin.readLineSync()!;
      while (!RegExp(r"^FW\d{3}$").hasMatch(code)) {
        stdout.write("Invalid code! Please enter again (FW___): ");
        code = stdin.readLineSync()!;
      }
      find("code", code, courses);
      break;
    case 2:
      print("Enter course name search: ");
      var name = stdin.readLineSync()!;
      find("name", name, courses);
      break;
  }
}

void inDScourse() {
  bool fond = false;
  for (var course in courses) {
    displayInfo(course);
    fond = true;
  }
  if (!fond) {
    print("Không có dữ liệu. vui long nhập dữ liệu");
  }
}

void addCourse() {
  var course = Course("", "", 0.0, "", "");
  inputInfo(course);
  courses.add(course);
}

void menu() {
  switch (choice) {
    case 1:
      addCourse();
      break;
    case 2:
      inDScourse();
      break;
    case 3:
      search();
      break;
    default:
      print("Invalid choice default");
  }
}
