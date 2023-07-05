import 'dart:io';
import 'dart:math';

void main() {
  final Random random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);

  int attempts = 0;
  int guess = 0;

  print('Welcome to Guess the Number!');
  print('I have chosen a number netween 1 and 100.');
  print('Can you guess the number?');

  while(guess != randomNumber){
    stdout.write('Enter the guess:');
    String? input = stdin.readLineSync();
    print(input);
    if (input == null){
      print('Invalid input. Please enter a number.');
    } continue;
    int guess = int.tryParse(input){String 
  }
}
