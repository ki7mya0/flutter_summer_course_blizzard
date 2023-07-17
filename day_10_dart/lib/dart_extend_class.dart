//class extension (inheritance)
class Shape {
  int size = 0;
  int length = 0;
  int height = 0;
  Shape({required int size, required int length, required int height}) {
    this.size = size;
    this.length = length;
    this.height = height;
  }
  void showInfo() {
    print("I'm a shape");
  }
}

class Rectangle extends Shape {
  Rectangle(
      {required super.size, required super.length, required super.height});

  @override
  void showInfo() {
    print("I'm a rectangle");
  }
}

//EXERCISE
class Animal {
  String name = 'Animal';
  String type = 'Animal';
  Animal({required String name, required String type}) {
    this.name = name;
    this.type = type;
  }
  void makeNoise() {
    print('animal roaring');
  }
}

class Pig extends Animal {
  Pig({required super.name, required super.type});

  @override
  void makeNoise() {
    print('pig roarr');
  }
}
class Cat extends Animal {
  Cat({required super.name, required super.type});

  @override
  void makeNoise(){
    print('meow');
  }
}
class Horse extends Animal {
  Horse({required super.name, required super.type});

  @override
  void makeNoise(){
    print('neigh');
  }
}

void main() {
  //shineer shape gdg object uusgene
  final shape = Shape(size: 3, length: 10, height: 30);
  shape.showInfo();
  //how do i create triangle?
  final rectangle = Rectangle(size: 3, length: 20, height: 40);
  rectangle.showInfo();
  //EXERCISE
  final animal = Animal(name: 'animal', type: 'animal');
  animal.makeNoise();
  final pig = Pig(name: 'butasan', type: 'pig');
  pig.makeNoise();
  final cat = Cat(name: 'nekosan', type: 'cat');
  cat.makeNoise();
  final horse = Horse(name: 'umasan', type: 'horse');
  horse.makeNoise();
}
