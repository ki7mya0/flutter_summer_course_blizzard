//car gdg class uusgene
//wheel gdg class dotroo aguuldag
class Wheel {
  int numberOfWheels = 0;
  //name constructor
  Wheel({required int numberOfWheels}) {
    this.numberOfWheels = numberOfWheels;
  }
}

class Car {
  String name = 'Car';
  Wheel dugui = Wheel(numberOfWheels: 4);
  //car constructor
  Car({required String name, required Wheel dugui}) {
    this.name = name;
    this.dugui = dugui;
  }
}

//EXERCISE
class Door {
  int numberOfDoors = 0;
  Door({required int numberOfDoors}) {
    this.numberOfDoors = numberOfDoors;
  }
}

class Floor {
  int numberOfFloors = 0;
  Floor({required int numberOfFloors}) {
    this.numberOfFloors = numberOfFloors;
  }
}

class Building {
  String name = 'Building';
  Floor floors = Floor(numberOfFloors: 0);
  Door doors = Door(numberOfDoors: 0);
  Building({required String name, required Floor floors, required Door doors}) {
    this.name = name;
    this.floors = floors;
    this.doors = doors;
  }
}

void main() {
  final lamborghiniDugui = Wheel(numberOfWheels: 4);
  final car = Car(name: 'Lamborghini', dugui: lamborghiniDugui);
  //exercise
  final ajnaifloors = Floor(numberOfFloors: 3);
  final ajnaidoors = Door(numberOfDoors: 2);
  final building =
      Building(name: 'Ajnai 101', floors: ajnaifloors, doors: ajnaidoors);
}
