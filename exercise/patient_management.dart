import 'dart:io';

import 'patient.dart';

void main() {
  List<Patient> patients = [];
  int choice;
  do {
    print("1. add");
    print("2. display");
    print("0. Exit");
    print("Enter your choice: ");
    choice = int.parse(stdin.readLineSync()!);
    switch (choice) {
      case 1:
        var patient = Patient("nhat", "21", "tri");
        patients.add(patient);
        break;
      case 2:
        for (var patient in patients) {
          print("tên : ${patient.name}");
          print("tuổi : ${patient.age}");
          print("bệnh : ${patient.disease}");
        }
        break;
      default:
        print("Invalid choice");
    }
  } while (choice != 0);
}
