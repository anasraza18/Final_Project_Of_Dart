import 'dart:io';

import 'attendanceReport.dart';
import 'classManagement.dart';
import 'resultReport.dart';
import 'userManagement.dart';

adminDashboard(){
  print('=============Main Menu For Admin Dashboard===============');
  print("Option 1: User Management");
  print("Option 2: Class Management");
  print("Option 3: Attendance Report");
  print("Option 4: Result Report");
  print('');

  do {
    stdout.write('Select Any one or exit : ');
  String? InputOptionAdmin = stdin.readLineSync();

  if(InputOptionAdmin.toString().toLowerCase() == 'exit'){
    break;
  }
  if (InputOptionAdmin == '1') {
     userManagement();
  }else if(InputOptionAdmin == '2'){
     classManagement(); 
  }else if(InputOptionAdmin == '3'){
    attendanceReport();
  }else if(InputOptionAdmin == '3'){
    resultReport();
  }else{
    print("Invalid Option! please try again.");
  } 
  } while (true);
}