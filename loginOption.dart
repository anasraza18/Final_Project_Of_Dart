import 'dart:io';

loginOption(){
  print('=============Main Menu===============');
  print("Option 1: Admin");
  print("Option 1: Teacher");
  print("Option 1: Student");
  print("Option 1: Parent");
  print('');
  
  stdout.write('Select Any one : ');
  int InputOption = int.parse(stdin.readLineSync()!);
  print(InputOption);
}