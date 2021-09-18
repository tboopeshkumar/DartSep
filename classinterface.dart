
//% Classes vs Interfaces
//% OOP based on living beings (biology)

//% Class represents who you are

//? Dart has OVERRIDING but no OVERLOADING

class Base {
  int id;

  Base(): id = 8;
  void printId() => print(id);
}

class Derived extends Base {
  @override
  void printId() => print("id=$id"); //! overriding base class methods
}

void main () {
  var b = Base();
  b.printId();

  var d = Derived();
  d.printId();

  //~  | Base does NOT define the behavior
  //~  |    | Derived defines how exactly it will happen
  //~  v    v   
  Base bp = Derived();
  bp.printId();   //~ Polymorphism
}