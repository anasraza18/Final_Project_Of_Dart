import 'dart:io';
import 'Admin/adminDashboard.dart';
import 'Admin/userManagement.dart';
import 'Parents/parentsdashboard.dart';
import 'Student/studentDashboard.dart';
import 'Teacher/teacherdashboard.dart';

//------------------------for admin------------------------------------
adminLogin({required String username, required String password}){
  
  do {
      stdout.write("Enter the User name or exit : ");
  String? adminUser = stdin.readLineSync()!;

  if (adminUser.toString().toLowerCase() == 'exit') {
    break;
  }

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
   stdout.write("Enter the student name : ");
   String? parName = stdin.readLineSync()!;

   stdout.write("Enter the Password : ");
   String? parPass = stdin.readLineSync()!;
   
   var parent = parentsinfo.firstWhere(
    (e) => e['username'] == parName && e['password'] == parPass);

   if (parent != null) {
     parentsDashboard();
   }else{
    print("Please enter the correct user or password");
   }
}

//------------------------for students------------------------------------
studentLogin(){
   stdout.write("Enter the student name : ");
   String? studName = stdin.readLineSync()!;

   stdout.write("Enter the Password : ");
   String? studPass = stdin.readLineSync()!;
   
   var students = studentinfo.firstWhere(
    (e) => e['username'] == studName && e['password'] == studPass);

   if (students != null) {
     studentDashboard();
   }else{
    print("Please enter the correct user or password");
   }
}

//------------------------for teacher------------------------------------
teacherLogin(){
    stdout.write("Enter the student name : ");
   String? teacName = stdin.readLineSync()!;

   stdout.write("Enter the Password : ");
   String? teacPass = stdin.readLineSync()!;
   
   var teachers = teacherinfo.firstWhere(
    (e) => e['username'] == teacName && e['password'] == teacPass);

   if (teachers != null) {
     teacherDashboard();
   }else{
    print("Please enter the correct user or password");
   } 
}