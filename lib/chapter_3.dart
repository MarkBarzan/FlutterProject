import 'dart:math';

// Mini-exercise 6
// Make an enum called AudioState and give it the values: playing, paused, and stopped.

enum AudioState {
  playing,
  paused,
  stopped,
}

void main() {
  // Mini-exercise 1
  // Create a constant myAge and set it to your age. Create a const named isTeenager
  // that uses bool logic to determine if the age denotes someone in the range 13 to 19

  const int myAge = 25;
  const bool isTeenager = 13 <= myAge && myAge <= 19;
  print(
      "The statement that my age of $myAge puts me in the teenage years is $isTeenager.\n");

  // Mini-exercise 2
  // Create a constant maryAge and set it equal to 30. Then create a const named bothTeenagers
  // that uses bool logic to determine if both you and Mary are teenagers

  const int maryAge = 30;
  const bool bothTeenagers =
      (13 <= myAge && myAge <= 19) && (13 <= maryAge && maryAge <= 19);
  print(
      "The statement that my age of $myAge and the age of Mary, $maryAge, makes us belong to the teenage category is $bothTeenagers.\n");

  // Mini-exercise 3
  // Create a String const named reader and set it to your name.
  // Create another String const named ray and set it to Ray Wenderlich.
  // Create a bool const named rayIsReader that uses the equality sign to determine if reader and ray are equal.

  const String reader = "Mark Barzan";
  const String ray = "Ray Wenderlich";
  const bool rayIsReader = reader == ray;
  print(
      "The statement that the two Strings, $reader and $ray, are equal is $rayIsReader.\n");

  // Mini-exercise 4
  // Create a constant named myAge and initialize it with your age
  // Write an if statement to print out your age if you're a teenager (13-19) and an else to print out your age if it is not

  const int myAge1 = 25;
  if (13 <= myAge1 && myAge1 <= 19) {
    print("My age of $myAge1 belongs to the teenager category.\n");
  } else {
    print("My age of $myAge1 does not belong to the teenager category.\n");
  }

  // Mini-exercise 5
  // Use a ternary conditional operator to re-write previous exercise. Set the result to a variable named answer

  const String answer = (13 <= myAge1 && myAge1 <= 19)
      ? "I am a teenager.\n"
      : "Thank fuck I'm not a teenager.\n";
  print(answer);

  // Mini-exercise 7 (Mini-exercise 6 is outside main at the start)
  // Create a constant named audioState and give it a value. Write a switch statement to print a message based on the value

  const audioState = AudioState.playing;
  switch (audioState) {
    case AudioState.playing:
      print("Your playback is currently playing.");
      break;
    case AudioState.paused:
      print("Your playback is currently paused.");
      break;
    case AudioState.stopped:
      print("Your playback is currently stopped.");
      break;
  }

  // Mini-exercise 8
  // Create a while loop with the condition counter < 10. The counter should increment by 1 and print the counter's value at each step

  int counter = 0;
  while (counter < 10) {
    print("The value of counter is currently $counter.\n");
    counter++;
  }

  // Mini-exercise 9
  // Write a for loop starting at 1 and ending in 10 inclusive. Print the square of each number.

  int i = 0;
  for (i = 1; i <= 10; i++) {
    String square = (i * i).toString();
    print("The square of each number is $square\n");
  }

  // Mini-exercise 10
  // Write a for-in loop to iterate over the following collection of numbers. Print the square root of each number.

  const numbers = [1, 2, 4, 7];
  for (var number in numbers) {
    String squareRoot = sqrt(number).toString();
    print("The square root of the iteration is $squareRoot.\n");
  }

  // Mini-exercise 11
  // Repeat previous exercise as a for-each loop

  numbers.forEach((number) => print(sqrt(number)));

  // Challenges
  // Challenge 1
  // Find the error in the following code
  // const String firstName = "Bob";
  // if(firstName == "Bob") {
  //   const String lastName = "Smith";
  // } else if(firstName == "Ray"){
  //   const String lastName = "Wenderlich";
  // }
  // final fullName = firstName + ' ' + lastName;

  // The error in the following code is that lastName has not been declared outside of the if statement,
  // so outside of it, it is undefined.

  // Challenge 2
  // In each of the following statements, what is the value of the boolean expression
  true && true; // true
  false || false; // false
  (true && 1 != 2) ||
      (4 > 3 &&
          100 < 1); // true because the left side of this equation is true.
  ((10 / 2) > 3) && ((10 % 2) == 0); // true

  // Challenge 3
  // Given a number, determine the next power of two above or equal to that number.

  final randomNumber = Random();
  int x = randomNumber.nextInt(10);
  for(int i = 0; i < x; i++) {
    if(pow(i,2) >= x) {
      print("The next power of two above or equal to $x is ${pow(i,2)}.\n");
      break;
    }
  }


  // Challenge 5
  // What will be the value of sum and how many iterations will happen in the following code?

  var sum = 0;
  for (var i = 0; i <= 5; i++) {
    sum += i;
    print(sum);
  }
  // There will be 6 iterations, since it goes from 0 up to and including 5.
  // The value of sum is going to be 15.

  // Challenge 6
  // Write a countdown from 10 to 0

  for (i = 10; i >= 0; i--) {
    // print(i);
    print("There are $i seconds left.\n");
  }

  // Challenge 7
  // Print the sequence 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0

  const sequence = [0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0];
  sequence.forEach((number) => print(number));
}
