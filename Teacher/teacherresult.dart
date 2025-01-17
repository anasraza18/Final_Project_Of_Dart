import 'dart:io';

import '../Admin/userManagement.dart';

teacherResult() {
  List reportCard = [
    // studentinfo,
    // {
    //   'subjects': [
    //     {'sub': 'maths', 'marks': 88.0, 'total_marks': 100},
    //     {'sub': 'english', 'marks': 87.0, 'total_marks': 100},
    //     {'sub': 'chemistry', 'marks': 77.0, 'total_marks': 100},
    //     {'sub': 'physics', 'marks': 76.0, 'total_marks': 100},
    //     {'sub': 'computer', 'marks': 65.0, 'total_marks': 100}
    //   ]
    // }
  ];

  while (true) {
    stdout.write("Enter the student ID for generate report card or exit: ");
    String? studentid = stdin.readLineSync()!;

    if (studentid.toString().toLowerCase() == 'exit') {
      break;
    }

    var findstud = studentinfo.firstWhere((e) => e['ID'] == studentid);

    if (findstud != null) {
      stdout.write("Enter the No of courses : ");
      int noOfcourses = int.parse(stdin.readLineSync()!);

      double obtainmarks = 0;
      double finalmarks = 0;
      List<String> courses = [];

      for (var i = 1; i <= noOfcourses; i++) {
        stdout.write("Course name : ");
        String? course = stdin.readLineSync()!;

        stdout.write("Enter the marks of $course : ");
        double marks = double.parse(stdin.readLineSync()!);

        stdout.write("Enter the Total marks of $course : ");
        double totalmarks = double.parse(stdin.readLineSync()!);

        courses += [course];
        obtainmarks += marks;
        finalmarks += totalmarks;
      }

      double percentage = (obtainmarks / finalmarks) * 100;
      //print(percentage);

      reportCard.add({
        'Student_information': findstud,
        'Subjects': courses,
        'Total_marks': finalmarks,
        'Obtained_marks': obtainmarks,
        'Percentage': percentage.toStringAsFixed(2)
      });
      print('');
    } else {
      print("Please enter the correct id");
    }
  }
}
