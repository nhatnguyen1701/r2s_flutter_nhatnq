import 'dart:io';

class Course {
  late String code;
  late String name;
  late double duration;
  late String status;
  late String flag;

  Course(this.code, this.name, this.duration, this.status, this.flag);
}

void inputInfo(Course course) {
  //nhap code
  print('Enter course code:(FW___) ');
  course.code = stdin.readLineSync()!;
  while (!RegExp(r"^FW\d{3}$").hasMatch(course.code)) {
    stdout.write("Invalid code! Please enter again (EX: FW123): ");
    course.code = stdin.readLineSync()!;
  }
  //nhap name
  print('Enter course name: ');
  course.name = stdin.readLineSync()!;
// nhap duration
  while (true) {
    print('Enter course duration: (Enter number) ');
    try {
      course.duration = double.parse(stdin.readLineSync()!);
      break;
    } catch (e) {
      print("Invalid choice ");
    }
  }
// nhap status
  while (true) {
    late int choice;
    while (true) {
      try {
        print(
            'Enter course status. Please enter number (1. active/2. in_active):');
        choice = int.parse(stdin.readLineSync()!);
        break;
      } catch (e) {
        print("Invalid choice ");
      }
    }
    if (choice == 1) {
      course.status = 'active';
      break;
    } else if (choice == 2) {
      course.status = 'in_active';
      break;
    }
  }
  // nhap flag
  while (true) {
    late int choice;
    while (true) {
      try {
        print("Enter course flap: Please enter ("
            "Enter number 1. optional/"
            "Enter number 2. mandatory/"
            "Enter number 3. N/A) ");
        choice = int.parse(stdin.readLineSync()!);
        break;
      } catch (e) {
        print("Invalid choice ");
      }
    }
    if (choice == 1) {
      course.flag = 'optional';
      break;
    } else if (choice == 2) {
      course.flag = 'mandatory';
      break;
    } else if (choice == 3) {
      course.flag = 'N/A';
      break;
    }
  }
}

void displayInfo(Course course) {
  print("Information course: ${course.code}");
  print(
      "Code: ${course.code} | Name: ${course.name} | Duration: ${course.duration} | Status: ${course.status} | Flag: ${course.flag}");
  print("===================================");
}

void find(String type, dynamic data, List<Course> courses) {
  bool found = false;

  for (var course in courses) {
    if ((type == "code" && course.code == data) ||
        (type == "name" &&
            course.name.toLowerCase().contains(data.toLowerCase()))) {
      displayInfo(course);
      found = true;
    }
  }
  if (!found) {
    print("Không tìm thấy $data . Đợi cập nhật lại sao");
  }
}
