import 'dart:io';

import '../Admin/userManagement.dart';

teacherResult(){
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
    int  noOfcourses = int.parse(stdin.readLineSync()!);

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

    double percentage = (obtainmarks/finalmarks)*100;
    //print(percentage);

    reportCard.add({'Student_information' : findstud, 
    'Subjects' : courses, 
    'Total_marks' : finalmarks, 
    'Obtained_marks' : obtainmarks,
    'Percentage' : percentage.toStringAsFixed(2)}
    );

    for (var e in reportCard) {
      print("${e['Student_information']}");

    }

    // reportCard.forEach((e) { 
    // print("=============Report Card==============");
    // print('');
    // print("ID : ${e['Student_information']}");
    // // print("Name : ${e['username']}");
    // // print("Rollno : ${e['roll_no']}");
    // // print("Class : ${e['class']}");
    // print("");
    
    
    // });

    }else{
      print("Please enter the correct id");
    }

    
  }
}


  // for (var e in reportCard[0]) {
  //   print("=============Report Card==============");
  //   print('');
  //   print("ID : ${e['ID']}");
  //   print("Name : ${e['username']}");
  //   print("Rollno : ${e['roll_no']}");
  //   print("Class : ${e['class']}");
  //   print("");
  // }

  // int totalmarks = 0;
  // double obtainmarks = 0;

  // for (var sub in reportCard[1]['subjects']) {
  //   String subname = sub['sub'];
  //   double submarks = sub['marks'];
  //   int subtotalmarks = sub['total_marks'];

  //   totalmarks += subtotalmarks;
  //   obtainmarks += submarks;

  //   print("subject : ${subname}");
  //   print("Marks  : ${submarks}/${subtotalmarks}");
  //   print('');
  // }

  // print("Total Obtain Marks : ${obtainmarks}/${totalmarks}");
  // double percentage = (obtainmarks / totalmarks) * 100;
  // print("Percentage : ${percentage.toStringAsFixed(2)}%");
  // if (percentage > 80) {
  //   print("Grade : A++");
  //   print("Result : Pass");
  // } else if (percentage > 70) {
  //   print("Grade : A");
  //   print("Result : Pass");
  // } else if (percentage > 60) {
  //   print("Grade : B");
  //   print("Result : Pass");
  // } else if (percentage > 50) {
  //   print("Grade : C");
  //   print("Result : Pass");
  // } else if (percentage > 40) {
  //   print("Grade : D");
  //   print("Result : Pass");
  // } else if (percentage > 30) {
  //   print("Grade : E");
  //   print("Result : Pass");
  // } else {
  //   print("Result : Fail");
  // }
  // print('');