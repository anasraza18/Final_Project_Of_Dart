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

List studentinfo = [
  {
      'ID' : '0' ,
      'username' : 'anas',
      'roll_no' : 022,
      'class' : 16,
      'password' : 'anas123'
  },
  {
      'ID' : '1' ,
      'username' : 'ali',
      'roll_no' : 024,
      'class' : 6,
      'password' : 'ali123'
  }
  ];

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

    stdout.write("Enter the Student roll_no : ");
    String? stdrollNo = stdin.readLineSync();

    stdout.write("Enter the Student class : ");
    String? stdclass = stdin.readLineSync();

    studentinfo
        .add({'ID': addID, 'username': stdname, 'password': stdpassword, 'roll_no' : stdrollNo, 'class' : stdclass});
  }
  // studentinfo.forEach((e) {
  //   print(
  //       'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  // });
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
      print("Option 2: Update roll_no");
      print("Option 2: Update class");
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
      }else if (InputOptionAdmin == '3') {
        for (var e in studentinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the class of Student : ");
            String? updPass = stdin.readLineSync()!;
            e['class'] = updPass;
            studentinfo.forEach((e) {
              print(
                  'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
            });
          } else {
            print("Please enter the correct id");
          }
        }
      }else if (InputOptionAdmin == '4') {
        for (var e in studentinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the roll_no of Student : ");
            String? updrollNo = stdin.readLineSync()!;
            e['roll_no'] = updrollNo;
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
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}, roll_no : ${e['roll_no']}, class : ${e['class']}');
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
      deleteTeacher();
    } else if (InputOptionAdmin == '4') {
      listTeacher();
    } else {
      print("Invalid Option! please try again.");
    }
  } while (true);
}

List teacherinfo = [
  {
    'ID' : 1,
    'username' : 'anas',
    'password' : 'anas123'
  }
];

addTeacher() {
  while (true) {
    stdout.write("Add the id of teacher or exit : ");
    String? addID = stdin.readLineSync()!;

    if (addID.toString().toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Add the teacher name : ");
    String? stdname = stdin.readLineSync();

    stdout.write("Enter the teacher Password : ");
    String? stdpassword = stdin.readLineSync();

    teacherinfo
        .add({'ID': addID, 'username': stdname, 'password': stdpassword});
  }
  teacherinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}

updateTeacher() {
  while (true) {
    stdout.write("Enter the id of teacher, you want to update or exit : ");
    String? updID = stdin.readLineSync()!;

    if (updID.toString().toLowerCase() == 'exit') {
      break;
    }

    do {
      print('=============Main Menu For teacher===============');
      print("Option 1: Update Name");
      print("Option 2: Update password");
      print('');

      stdout.write('Select Any one for teacher or exit : ');
      String? InputOptionAdmin = stdin.readLineSync();

      if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
        break;
      }
      if (InputOptionAdmin == '1') {
        for (var e in teacherinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the name of teacher : ");
            String? updName = stdin.readLineSync()!;
            e['username'] = updName;
            teacherinfo.forEach((e) {
              print(
                  'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
            });
          } else {
            print("Please enter the correct id");
          }
        }
      } else if (InputOptionAdmin == '2') {
        for (var e in teacherinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the pasword of teacher : ");
            String? updPass = stdin.readLineSync()!;
            e['password'] = updPass;
            teacherinfo.forEach((e) {
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

deleteTeacher() {
  while (true) {
    stdout.write("Enter the teacher ID to remove or exit : ");
    String? remId = stdin.readLineSync()!;

    if (remId.toString().toLowerCase() == 'exit') {
      break;
    }

    var stdFound = teacherinfo.any((e) => e['ID'] == remId);
    if (stdFound) {
      teacherinfo.removeWhere((e) => e['ID'] == remId);
      teacherinfo.forEach((e) {
        print(
            'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
      });
    } else {
      print("Please enter the correct id");
    }
  }
}

listTeacher() {
  teacherinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}

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

List parentsinfo = [
  {
    'ID' : 1,
    'username' : 'anas',
    'password' : 'anas123'
  }
];

addParents() {
  while (true) {
    stdout.write("Enter the id of parents or exit : ");
    String? addID = stdin.readLineSync()!;

    if (addID.toString().toLowerCase() == 'exit') {
      break;
    }

    stdout.write("Add the parents name : ");
    String? stdname = stdin.readLineSync();

    stdout.write("Enter the parents Password : ");
    String? stdpassword = stdin.readLineSync();

    parentsinfo
        .add({'ID': addID, 'username': stdname, 'password': stdpassword});
  }
  parentsinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}

updateParents() {
  while (true) {
    stdout.write("Enter the id of parents, you want to update or exit : ");
    String? updID = stdin.readLineSync()!;

    if (updID.toString().toLowerCase() == 'exit') {
      break;
    }

    do {
      print('=============Main Menu For parents===============');
      print("Option 1: Update Name");
      print("Option 2: Update password");
      print('');

      stdout.write('Select Any one for parents or exit : ');
      String? InputOptionAdmin = stdin.readLineSync();

      if (InputOptionAdmin.toString().toLowerCase() == 'exit') {
        break;
      }
      if (InputOptionAdmin == '1') {
        for (var e in parentsinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the name of parents : ");
            String? updName = stdin.readLineSync()!;
            e['username'] = updName;
            parentsinfo.forEach((e) {
              print(
                  'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
            });
          } else {
            print("Please enter the correct id");
          }
        }
      } else if (InputOptionAdmin == '2') {
        for (var e in parentsinfo) {
          if (updID == e['ID']) {
            stdout.write("Update the pasword of parents : ");
            String? updPass = stdin.readLineSync()!;
            e['password'] = updPass;
            parentsinfo.forEach((e) {
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

deleteParents() {
  while (true) {
    stdout.write("Enter the parents ID to remove or exit : ");
    String? remId = stdin.readLineSync()!;

    if (remId.toString().toLowerCase() == 'exit') {
      break;
    }

    var stdFound = parentsinfo.any((e) => e['ID'] == remId);
    if (stdFound) {
      parentsinfo.removeWhere((e) => e['ID'] == remId);
      parentsinfo.forEach((e) {
        print(
            'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
      });
    } else {
      print("Please enter the correct id");
    }
  }
}

listParents() {
  parentsinfo.forEach((e) {
    print(
        'ID : ${e['ID']} Username : ${e['username']} , Password : ${e['password']}');
  });
}
