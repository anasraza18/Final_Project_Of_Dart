
import '../Teacher/teacherresult.dart';

resultForStudent() {
  
      reportCard.forEach((e) {
        print("=============Report Card==============");
        print("");

        print("Student info");
        (e['Student_information'] as Map).forEach((key, value) {
          if (key != 'password') {
            print("  $key: $value");
          }
        });
        print("");
        print("Total Marks : ${e['Obtained_marks']}/${e['Total_marks']}");
        print("Percentage : ${e['Percentage']}");
        if (percentage > 80) {
          print("Grade : A++");
          print("Result : Pass");
        } else if (percentage > 70) {
          print("Grade : A");
          print("Result : Pass");
        } else if (percentage > 60) {
          print("Grade : B");
          print("Result : Pass");
        } else if (percentage > 50) {
          print("Grade : C");
          print("Result : Pass");
        } else if (percentage > 40) {
          print("Grade : D");
          print("Result : Pass");
        } else if (percentage > 30) {
          print("Grade : E");
          print("Result : Pass");
        } else {
          print("Result : Fail");
        }
        print('');
      });
}
