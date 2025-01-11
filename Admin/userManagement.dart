import 'dart:io';


userManagement(){

  print('=============Main Menu For users===============');
  print("Option 1: student");
  print("Option 2: teacher");
  print("Option 3: Parents");
  print('');

  do {
    stdout.write('Select Any one or exit : ');
  String? InputOptionAdmin = stdin.readLineSync();

  if(InputOptionAdmin.toString().toLowerCase() == 'exit'){
    break;
  }
  if (InputOptionAdmin == '1') {
     student();
  }else if(InputOptionAdmin == '2'){
     teacher();
  }else if(InputOptionAdmin == '3'){
    parents();
  }else{
    print("Invalid Option! please try again.");
  } 
  } while (true);
}

//-------------------------student------------------------------------------------------------------------------------------------

void student(){
  print('=============Main Menu For Student===============');
  print("Option 1: Add Student");
  print("Option 2: Update Student");
  print("Option 3: Delete Student");
  print("Option 4: List Student");
  print('');

  do {
    stdout.write('Select Any one or exit : ');
  String? InputOptionAdmin = stdin.readLineSync();

  if(InputOptionAdmin.toString().toLowerCase() == 'exit'){
    break;
  }
  if (InputOptionAdmin == '1') {
     addStudent();
  }else if(InputOptionAdmin == '2'){
      updateStudent();
  }else if(InputOptionAdmin == '3'){
    deleteStudent();
  }else if(InputOptionAdmin == '4'){
    listStudent();
  }else{
    print("Invalid Option! please try again.");
  } 
  } while (true);
}

List studentinfo = [];

addStudent(){
  stdout.write("Enter the Student name : ");
  String? stdname = stdin.readLineSync();

  stdout.write("Enter the Student Password : ");
  String? stdpassword = stdin.readLineSync();

  studentinfo.add({'username' : stdname, 'password' : stdpassword});

  studentinfo.forEach((e) {
    print('Username : ${e['username']} , Password : ${e['password']}');
  });
}

updateStudent(){

}

deleteStudent(){

}

listStudent(){

}

//------------teacher------------------------------------------------------------------------------------------------------------
teacher(){
  print('=============Main Menu For Teacher===============');
  print("Option 1: Add Teacher");
  print("Option 2: Update Teacher");
  print("Option 3: Delete Teacher");
  print("Option 4: List Teacher");
  print('');

  do {
    stdout.write('Select Any one or exit : ');
  String? InputOptionAdmin = stdin.readLineSync();

  if(InputOptionAdmin.toString().toLowerCase() == 'exit'){
    break;
  }
  if (InputOptionAdmin == '1') {
     addTeacher();
  }else if(InputOptionAdmin == '2'){
      updateTeacher();
  }else if(InputOptionAdmin == '3'){
    deleteParents();
  }else if(InputOptionAdmin == '4'){
    
  }else{
    print("Invalid Option! please try again.");
  } 
  } while (true);
}

List teacherinfo = [];

addTeacher(){

}

updateTeacher(){

}

deleteTeacher(){

}

listTeacher(){
  
}

//-------------parents--------------------------------------------------------------------------------------------------
parents(){
    print('=============Main Menu For Parents===============');
  print("Option 1: Add Parents");
  print("Option 2: Update Parents");
  print("Option 3: Delete parents");
  print("Option 4: List parents");
  print('');

  do {
    stdout.write('Select Any one or exit : ');
  String? InputOptionAdmin = stdin.readLineSync();

  if(InputOptionAdmin.toString().toLowerCase() == 'exit'){
    break;
  }
  if (InputOptionAdmin == '1') {
     addParents();
  }else if(InputOptionAdmin == '2'){
      updateParents();
  }else if(InputOptionAdmin == '3'){
    deleteParents();
  }else if(InputOptionAdmin == '4'){
    listParents();
  }else{
    print("Invalid Option! please try again.");
  } 
  } while (true);
}

List parentsinfo = [];

addParents(){

}

updateParents(){

}

deleteParents(){

}

listParents(){
  
}
