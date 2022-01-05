void main() {
  // Mini-exercise 1
  // Write a function named youAreWonderful with a String parameter called name.
  // It should return a string using name, and say something like "You're wonderful, name".

  // Mini-exercise 2
  // Add another int parameter to that function called numberPeople so that the function returns something like
  // "You're wonderful, name. 10 people think so."

  // Mini-exercise 3
  // Make both inputs named parameters. Make name required and set numberPeople to have a default of 30.

  String youAreWonderful({
    required String name,
    int numberPeople = 30,
  }) {
    return 'You are wonderful, $name. $numberPeople people think so.';
  }

  print(youAreWonderful(name: 'Dorel', numberPeople: 5));

  // Mini-exercise 1
  // Change the youAreWonderful function in the first mini-exercise of this chapter into an anonymous function.
  // Assign it to a variable called wonderful.

  Function wonderful = (String name, int numberPeople) {
    return 'You are wonderful, $name. $numberPeople people think so.';
  };
  print(wonderful("Mark", 5));

  // Mini-exercise 2
  // Using forEach, print a message telling the people in the following list that they're wonderful
  const people = ["Chris", "Tiffani", "Pablo"];

  people.forEach((person) {
    final hello = "You are wonderful, $person";
    print(hello);
  });

  // Mini-exercise
  // Change the forEach loop in the previous exercise to use arrow syntax
  people.forEach((person) => print("You are wonderfuk, $person"));

  // Challenge 1
  // Write a function that checks if a number is prime
  void checkPrime(int primeTest) {
    int i;
    int m = 0;
    int prime = 0;
    m = primeTest ~/ 2;

    for (i = 2; i <= m; i++) {
      if (primeTest % i == 0) {
        print("$primeTest is not a prime number.");
        prime = 1;
        break;
      }
    }
    if (prime == 0) {
      print("$primeTest is a prime number");
    }
  }
  checkPrime(7);
  checkPrime(13);
  checkPrime(4);

  // Challenge 2
  // Write a function named repeatTask with the following definition:
  // int repeatTask(int times, int input, Function task);
  // It repeats a given task on input for times number of times.
  // Pass an anonymous function to repeatTask to square the input of 2 four times.
  // Confirm that you get the result 65536.

  int repeatTask(int times, int input, Function(int) task) {
    int inputSquared = task(input);
    for (var i = 1; i < times; i++) {
      inputSquared = task(inputSquared);
    }
    return inputSquared;
  }

  int challenge2 = repeatTask(4, 2, (int input) {
    return input * input;
  });

  // Challenge 3
  // Update challenge 2 to use arrow syntax

  int challenge3 = repeatTask(4, 2, (int input) => input * input);

}
