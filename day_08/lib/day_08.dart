// add.dart gedeg file dotor bga functioniig duudaj oruulj irsen bna.
import 'package:day_08/add.dart';
import 'dart:io';
import 'dart:math';

void main(){
  print('Day - 08');
  print(add(4, 5));
  print(minus(5, 6));

  print(minus(10, 4));

  final myObject = A();
  print(myObject.x);
  print(myObject.y);
  print(myObject.nextInt());
  print(myObject.add(4, 5));

  final Random random = Random();
  final int randomNumber = random.nextInt(100) + 1;
  print(randomNumber);

  //exercise 01
  final Random random2 = Random();
  final int randomNumber2 = random2.nextInt(20) + 1;

  //exercise02
  print(minus(9, 1));
}
class A {
  int x = 0;
  int y = 0;
  int nextInt(){
    return 100;
  }
  //object dotor function bichij bna
  int add(int a, int b){
    return a + b;
  }

  //exercise02
  int minus(int c, int d){
    return c - d;
}

}