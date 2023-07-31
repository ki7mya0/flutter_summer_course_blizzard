//day16

//ternary operator

int a = 16;
void main() {
  //if else version
  if (a > 15) {
    print('The number is less than $a');
  } else {
    print('The number is bigger than $a');
  }

  //ternary version
  a > 15
      ? print('The number is less than $a')
      : print('The number is bigger than $a');

  bool isBigger = a > 15 ? false : true;
  print(isBigger);
}

//stateful widget
