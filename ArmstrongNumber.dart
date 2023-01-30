//
import 'dart:io';
import 'dart:math';

void main() {
  print("Enter a number");
  int? input_number = int.parse(stdin.readLineSync()!);
  double sum = requiredSum(input_number);
  if (input_number == sum.toInt()) {
    print("Armstrong Number");
  } else
    print("Not an Armstrong Number");
}

double requiredSum(int num) {
  int i = noOfDigits(num);
  double sum = 0;
  while (num > 0) {
    int digit = num % 10;
    num = num ~/ 10;
    sum = sum + pow(digit, i);
  }
  return sum;
}

int noOfDigits(int num) {
  int count;
  for (count = 0; num > 0; count++) {
    num = num ~/ 10;
  }
  return count;
}


//try 153