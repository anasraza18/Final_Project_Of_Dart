import 'dart:io';

userManagement() {
  do {
    print('=============Main Menu For users===============');
    print("Option 1: student");
    print("Option 2: teacher");
    print("Option 3: Parents");
    print('');

    stdout.write('Select Any one for user or exit : ');
    String? InputOptionAdmin = stdin.readLineSync();

    if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOptionAdmin == '1') {
      student();
    } else if (InputOptionAdmin == '2') {
      teacher();
    } else if (InputOptionAdmin == '3') {
      parents();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}

//-------------------------student------------------------------------------------------------------------------------------------

student() {
  do {
    print('=============Main Menu For Student===============');
    print("Option 1: Add Student");
    print("Option 2: Update Student");
    print("Option 3: Delete Student");
    print("Option 4: List Student");
    print('');

    stdout.write('Select Any one for student or exit : ');
    String? InputOptionAdmin = stdin.readLineSync();

    if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOptionAdmin == '1') {
      addStudent();
    } else if (InputOptionAdmin == '2') {
      updateStudent();
    } else if (InputOptionAdmin == '3') {
      deleteStudent();
    } else if (InputOptionAdmin == '4') {
      listStudent();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}

List studentinfo = [];

addStudent() {
  while (true) {
    stdout.write("Enter the id of student or exit : ");
    String? addID = stdin.readLineSync()!;

    if (addID.toString().toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Add the Student name : ");
    String? stdname = stdin.readLineSync();

    stdout.write("Enter the Student Password : ");
    String? stdpassword = stdin.readLineSync();

    studentinfo
        .add({'ID': addID, 'username': stdname, 'password': stdpassword});
  }
  studentinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}

updateStudent() {
  while (true) {
    stdout.write("Enter the id of student, you want to update or exit : ");
    String? updID = stdin.readLineSync()!;

    if (updID.toString().toLowerCase() == 'exit') {
      break;
    }

    do {
      print('=============Main Menu For Student===============');
      print("Option 1: Update Name");
      print("Option 2: Update password");
      print('');

      stdout.write('Select Any one for student or exit : ');
      String? InputOptionAdmin = stdin.readLineSync();

      if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
        break;
      }
      if (InputOptionAdmin == '1') {
        for (var e in studentinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the name of Student : ");
            String? updName = stdin.readLineSync()!;
            e['username'] = updName;
            studentinfo.forEach((e) {
              print(
                  'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
            });
          } else {
            print("Please enter the correct id");
          }
        }
      } else if (InputOptionAdmin == '2') {
        for (var e in studentinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the pasword of Student : ");
            String? updPass = stdin.readLineSync()!;
            e['password'] = updPass;
            studentinfo.forEach((e) {
              print(
                  'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
            });
          } else {
            print("Please enter the correct id");
          }
        }
      } else {
        print("Invalid Option! please try again.");
      }
    } while (true);
  }
}

deleteStudent() {
  while (true) {
    stdout.write("Enter the studend ID to remove or exit : ");
    String? remId = stdin.readLineSync()!;

    if (remId.toString().toLowerCase() == 'exit') {
      break;
    }

    var stdFound = studentinfo.any((e) => e['ID'] == remId);
    if (stdFound) {
      studentinfo.removeWhere((e) => e['ID'] == remId);
      studentinfo.forEach((e) {
        print(
            'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
      });
    } else {
      print("Please enter the correct id");
    }
  }
}

listStudent() {
  studentinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}

//------------teacher------------------------------------------------------------------------------------------------------------
teacher() {
  do {
    print('=============Main Menu For Teacher===============');
    print("Option 1: Add Teacher");
    print("Option 2: Update Teacher");
    print("Option 3: Delete Teacher");
    print("Option 4: List Teacher");
    print('');

    stdout.write('Select Any one for teacher or exit : ');
    String? InputOptionAdmin = stdin.readLineSync();

    if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOptionAdmin == '1') {
      addTeacher();
    } else if (InputOptionAdmin == '2') {
      updateTeacher();
    } else if (InputOptionAdmin == '3') {
      deleteParents();
    } else if (InputOptionAdmin == '4') {
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}

List teacherinfo = [];

addTeacher() {}

updateTeacher() {}

deleteTeacher() {}

listTeacher() {}

//-------------parents--------------------------------------------------------------------------------------------------
parents() {
  do {
    print('=============Main Menu For Parents===============');
    print("Option 1: Add Parents");
    print("Option 2: Update Parents");
    print("Option 3: Delete parents");
    print("Option 4: List parents");
    print('');

    stdout.write('Select Any one for parent or exit : ');
    String? InputOptionAdmin = stdin.readLineSync();

    if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
      break;
    }
    if (InputOptionAdmin == '1') {
      addParents();
    } else if (InputOptionAdmin == '2') {
      updateParents();
    } else if (InputOptionAdmin == '3') {
      deleteParents();
    } else if (InputOptionAdmin == '4') {
      listParents();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}

List parentsinfo = [];

addParents() {}

updateParents() {}

deleteParents() {}

listParents() {}
