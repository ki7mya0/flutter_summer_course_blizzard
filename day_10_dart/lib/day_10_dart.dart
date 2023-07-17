//class
class Sprite {
  // constructor sprite
  Sprite(int x, int y) {
    this.x = x;
    this.y = y;
  }

  int x = 0; //class property
  int y = 0; //class property

  void makeNoise() {
    print('My position is ${this.x} and ${this.y}');
  }
}

//NAMED CONSTRUCTOR
class Shape {
  int length = 0;
  int height = 0;
//odoo length bolon height -iig ni ugch shineer object uusgedeg
// Shape constructor uusgeerei
  Shape({required int length, required int height}) {
    this.length = length;
    this.height = height;
    //showPosition gdg hariu butsaadaggui harin
    // length, height-iig ni hevledeg function bicheerei
  }
  void showPosition(){
    print('My size is ${this.length} and ${this.height}');
  }
}

//exercise day 10
class Animal{
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  String name = 'Animal';
  String type = 'Animal';
  makeNoise(){
    print('Animal roaring');
  }
}


void main() {
  final Drum = Sprite(10, 10); //sprite gdg object
  Drum.makeNoise();

  final shape = Shape(length: 10, height: 20);
  shape.showPosition();

  final animal = Animal(name: 'Tom Cat', type:'Cat');
  animal.makeNoise();
}
