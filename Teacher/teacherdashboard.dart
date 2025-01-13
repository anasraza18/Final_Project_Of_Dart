import 'dart:io';
import 'attendanceByteacher.dart';
import 'teacherresult.dart';
import 'timetableByTeacher.dart';
teacherDashboard(){
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
      attendanceByTeacher();
    } else if (InputOptionAdmin == '2') {
      teacherResult();
    } else if (InputOptionAdmin == '3') {
      timetableByTeacher();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}