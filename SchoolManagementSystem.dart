import 'dart:io';
import 'authentication.dart';

loginOption() {
  do {
    print('=============Main Menu===============');
    print("Option 1: Admin");
    print("Option 2: Teacher");
    print("Option 3: Student");
    print("Option 4: Parent");
    print('');

    stdout.write('Select Any one or exit : ');
    String? InputOption = stdin.readLineSync();

    if (InputOption.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOption == '1') {
      adminLogin(username: 'anas', password: "anas123");
    } else if (InputOption == '2') {
      teacherLogin();
    } else if (InputOption == '3') {
      studentLogin();
    } else if (InputOption == '4') {
      parentsLogin();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}
