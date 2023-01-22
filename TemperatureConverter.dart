import 'dart:io';

void main() {
  while (true) {
    print(
        "Welcome to Temperature Converter. Enter your Temperature vlaue's unit(F/C)");
    String? tempUnit = stdin.readLineSync()!;
    if (tempUnit.compareTo("F") == 0 || tempUnit.compareTo("f") == 0) {
      print("Enter the Temperature in Fahrenheit:");
      double? tempF = double.parse(stdin.readLineSync()!);
      double result1 = double.parse(((tempF - 32) * 5 / 9).toStringAsFixed(2));
      print("Your Celcius Temperature is : $result1 °c");
      break;
    } else if (tempUnit.compareTo("C") == 0 || tempUnit.compareTo("c") == 0) {
      print("Enter the Temperature in Celcius:");
      double? tempC = double.parse(stdin.readLineSync()!);
      double result2 = double.parse(((tempC * 9) / 5 + 32).toStringAsFixed(2));
      print("Your Fahrenheit Temperature is : $result2 °f");
      break;
    }
  }
}
