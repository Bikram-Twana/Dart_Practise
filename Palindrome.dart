//
import 'dart:io';

void main() {
  print("Enter a string:");
  String? inputString = stdin.readLineSync()!;

  String revString = inputString.split('').reversed.join();

  if (inputString.compareTo(revString) == 0) {
    print("This is a Palindrom String.");
  } else
    print("Not a Palindrome");
}
