import 'dart:io';

void main() {
  print("Enter your age:");
  int? input_age = int.parse(stdin.readLineSync()!);
  try {
   checkAge(input_age);
  }
  on AgeException
  {
    var ageException = new AgeException();
    stdout.writeln(ageException.error());
  }
}

void checkAge (int age) {
  if(age>18) {
    stdout.writeln("You are eligible for Voting.");
  } else {
    throw new AgeException();
  }
}

class AgeException implements Exception {
   String error () =>  "Sorry! You are not eligible for Voting.";
}
