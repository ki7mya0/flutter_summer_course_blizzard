//sprite buyu class
class Sprite {
  String name = 'Sprite';
  int x = 0;
  int y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;

  void say(String name) {
    print('Hello! My name is $name.');
  }

  void move(int x) {
    this.x = x;
    print('I moved ${this.x}');
  }

  //constructor
  Sprite(String name) {
    this.name = name;
  }

  //string butsaadag tgd name gdg Sprite classiin propertyg
  // butsaadag getName gdg function bichne uu.
  String getName() {
    return this.name;
  }
}

void main() {
  final Dee = Sprite('Dee');
  Dee.say('Dee'); //Deeg uuriin nereer ni heluuleh
  Dee.move(10); //Deeg x tenhlegiin daguu 10-aar nemey
  print(Dee.getName());
  final Chick = Sprite('Chick');
  Chick.say('Chick');
  Chick.move(100);
  print(Chick.getName());
  final Ruby = Sprite('Ruby');
  Ruby.say('Ruby');
  Ruby.move(200);
  print(Ruby.getName());
}
