void main() {

  //  Mini-Exercise 1
  //  Create a constant called age1 and set it equal to 42. Create another const called age2 and set it equal to 21.
  //  Check that the type for both constants has been inferred correctly
  //
  const age1 = 42;
  const age2 = 21;
  print("Const age1 is an ${age1.runtimeType}.");
  print("Const age2 is an ${age2.runtimeType}. \n");


  //  Mini-Exercise 2
  //  Create a constant called averageAge and set it equal to the average of age1 and age2. Check that the type has been inferred correctly
  //
  const averageAge = (age1 + age2) / 2;
  print("Const averageAge is a ${averageAge.runtimeType}.\n");
  //  It is a double because the average between 42 and 21 is 31.5.
  //  In order to maintain information accuracy, inferred type is automatically set to double.


  //  Mini-Exercise 3
  //  Create a string const called firstName and a lastName and initialize them both to your name.
  //
  const String firstName = "Mark";
  const String lastName = "Barzan";


  //  Mini-Exercise 4
  //  Create a constant called fullName, consisting of your first name and your last name constants together, separated by a space
  //
  const String fullName = "$firstName $lastName";


  //  Mini-Exercise 5
  //  Using interpolation, create a string const myDetails that uses fullName to create an introduction string.
  //
  const String myDetails = "Hello! My name is $fullName";
  print("$myDetails.\n");


  //  Challenge 1
  //  You're a teacher. Attendance is worth 20%, Homework is 30%, Exam is 50%.
  //  A student got 90 points in Attendance, 80 in Homework and 94 in the Exam. Calculate the grade as an int percentage.
  //
  const int highestGrade = 100; // Am plecat de la premisa notei maxime fiind 10 (100%)
  const double attendanceGrade = highestGrade * 0.2; // 20% din nota finala provine din prezenta
  const double homeworkGrade = highestGrade * 0.3; // 30% din nota finala provine din teme
  const double examGrade = highestGrade * 0.5; // 50% din nota finala provine din examen

  // Notele studentului la fiecare materie raportate ca procent din nota finala
  const double studAttendanceGrade = (90 * attendanceGrade) / 100;
  const double studHomeworkGrade = (80 * homeworkGrade) / 100;
  const double studExamGrade = (94 * examGrade) / 100;

  const double finalGrade = studAttendanceGrade + studHomeworkGrade + studExamGrade;
  final int finalGradeInt = finalGrade.toInt();
  final String studFinalGrade = "The student's final grade is $finalGradeInt%.\n";
  print(studFinalGrade);


  //  Challenge 4
  //  What is wrong with the following code?
  //  const name = 'Ray';
  //  name += ' Wenderlich';
  //  One cannot assign another value to a constant. The immutable object "name" cannot be reassigned a new value.


  //  Challenge 5
  //  What's the type of value?
  //
  const value = 10 / 2;
  print("The type of value is ${value.runtimeType}.\n"); // This is one way of finding out what the defined type of an object is.
  // After runtime, we find out it is a double


  //  Challenge 6
  //  What is the value of the constant named summary?
  //
  const int number = 10;
  const int multiplier = 5;
  const summary = '$number \u00D7 $multiplier = ${number*multiplier}';
  print("The value of the constant named summary is $summary, as it's a multiplication of 10 * 5.");

}