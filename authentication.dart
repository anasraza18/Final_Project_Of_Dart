import 'dart:io';
import 'adminDashboard.dart';

adminLogin({required String username, required String password}){
  
  do {
      stdout.write("Enter the User name : ");
  String? adminUser = stdin.readLineSync()!;

    stdout.write("Enter the Password : ");
  String? adminpassword = stdin.readLineSync()!;

  if (adminUser == username && adminpassword == password) {
    print("Successfully Login!");
    adminDashboard();
  }else{
    print("Incorrect user or password, try again!");
  }
  } while (true);
}

parentsLogin(){
  print("parents");
}

studentLogin(){
  print("student");
}

teacherLogin(){
  print("teacher");
}