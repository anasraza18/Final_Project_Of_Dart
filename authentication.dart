import 'dart:io';
import 'Admin/adminDashboard.dart';

//------------------------for admin------------------------------------
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
//------------------------for parents------------------------------------
parentsLogin(){
  print("parents");
}

//------------------------for students------------------------------------
studentLogin(){
  print("student");
}

//------------------------for teacher------------------------------------
teacherLogin(){
  print("teacher");
}