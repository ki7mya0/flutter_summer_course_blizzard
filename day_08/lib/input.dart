import 'dart:io';

void main() {
  stdout.write('Enter your guess: ');
  String? input = stdin.readLineSync(); //?-null safety
  print(input);
}