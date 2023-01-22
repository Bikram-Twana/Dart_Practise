//WAP to count a word in given user input text. And if user text is empty then provide default value.
import 'dart:io';

void main() {
  String paragraph1 = "";

  print("Enter a string or text:");
  String? userInputString = stdin.readLineSync()!;

  if (userInputString.isNotEmpty == true) {
    paragraph1 = userInputString;
  } else {
    paragraph1 = '''String helps you to store text based data.
In String, you can represent your name, address, or complete book. It holds a series or sequence of characters
letters, numbers, and special characters. You can use single or double, or triple quotes to represent String.''';
  }

  List<String> numberOfWord = paragraph1.split(" ");
  print(numberOfWord.length);

  numberOfWord.forEach((word) {
    //removing , & . in every word if word contains
    word = word.toString();
    int len = word.length;
    if (word[len - 1].compareTo(",") == 0 ||
        word[len - 1].compareTo(".") == 0) {
      word = word.substring(0, len - 1);
      print(word);
    } else
      print(word);
  });
}
