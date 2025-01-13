import 'dart:io';

import '../Admin/resultReport.dart';
import 'attendance.dart';
import 'result.dart';
import 'timetable.dart';

studentDashboard(){
    do {
    print('=============Main Menu For Student Dashboard===============');
    print("Option 1: Attendance");
    print("Option 2: Result Report");
    print("Option 3: Timetable");
    print('');

    stdout.write('Select Any one or exit : ');
    String? InputOptionAdmin = stdin.readLineSync();

    if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOptionAdmin == '1') {
      attendance();
    } else if (InputOptionAdmin == '2') {
      resultForStudent();
    } else if (InputOptionAdmin == '3') {
      timeTable();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}