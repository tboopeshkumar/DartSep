//% mixis is a class WITHOUT constructor
//% class can inherict SINGLE class
//% class can add MULTIPLE mixins(JSON genertor, XML generator, Dynamic fields)
//% class can implement MULTIPLE interfaces(Programmer, Musician)
//! mixin - readymade implementation
//! interface - class must implement on its own

//! C++ and Python -> multiple inheritance (no interfaces) [Diamon Problem]
//% Java and C# ->single inheritance , multiple interafaces [default interfaces]
//* Dart -> single inheritance, multiple interfaces, multiple mixin


class Human {
  void whoAmI() {
    print("I am human");
  }
}

class Musician {
  void playMusic(){
    print("Play music");
  }
}

mixin Accountant {
  int calculator = 0;
  void calculateTaxes(){
    print("Tax calculation");
  }
}

class Boopesh extends Human //? Inheritance
  with Accountant // % Mixin
  implements Musician //* Interface
  {
    void playMusic() {
      print("Playing flute");
    }
}

void main() {
  var b = Boopesh();
  b.whoAmI();
  b.playMusic();
  b.calculateTaxes();
  print(b.calculator);
}